Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3816BEA8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659760852;
	h=To:Subject:From:Message-Id:Date;
	bh=cGKUwq9M494f442EuK4Ch7c2gxsAuBDDnyaibm+sDbg=;
	b=Taw0+N+Kh6slHGfwQLkygV19sd6ejf3QgyYEc7hPvkEYWMHxFd41x8a26DQob5TX
	UZ1IIbqNzT0VKjXxai1RppoaFCEKefAqVXCuxzDIOK39TRw4Lz6NciB9ORJJc6LiR4H
	JA+c7Qhn+hoeVHK79CSmmss/aSoquoXJXsYVQIhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659760852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cGKUwq9M494f442EuK4Ch7c2gxsAuBDDnyaibm+sDbg=;
	b=JvjfGX2q2IvAr6yO2gTzHAlgxbFw8K/470M51vum0ov+ajxxLOvQn3g9PI1mh987
	0CkyKZw4ou6hkFkVvqPh8Wui/Gb1BGIOlnXj3Mz/Y01fSmx54PX90i1vmVAXrGUW7I7
	KBbYm1dc7a38X+Om4+MnmyrrI+Q5PuBIjLBEd19w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827174be7d-77d230fb-c321-4e8d-8fac-6a3eae37ec1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c168e057668d2fba278ca393cca3692572e276abf9cfd1147867f7ff126ff793
Date: Sat, 6 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659760852
