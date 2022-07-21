Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261B26AB3
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658440012;
	h=To:Subject:From:Message-Id:Date;
	bh=sA2V1RQDho8tfFStYO1dTo83sMN4YhH7Zbvg5cVzXrw=;
	b=Ukpcxla5nEbFt4KDJHLLAAiokmCOxvch76pfIDcVqy+N2LoJKkTqOrb9hsxXyvZ6
	N1zAjNx8ioExGMKfSp23l4GNRMNH2tcBrsB37MtmrlpcewJ6FfZOqxUBSKOLUlgeMMG
	SzpZJeMtWCjFLB6f2rW61quCgLsjTGusuGZKD8rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658440012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sA2V1RQDho8tfFStYO1dTo83sMN4YhH7Zbvg5cVzXrw=;
	b=QCXb18v5Wu4nH28SanmsdkUM/CvPEi7AdmQ9N3yzmM21r4vpCBs48E/E7/cD2ldH
	4mLgP0gDzEbHJhdo7o8aa7Yjy4YYmOd2JiFLmMvvx+IL4338cCp8Ev/XbrsgLwg+fdY
	abnmc6Fj2iBpAY6sHa3eKoMw7TfEJWEEGj+caJUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222ba51f9-785d872d-8487-46c8-9c98-c821476d5289-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e861d7276a1e2a6c31c04d972eb90195e5ae4a7eaece302ac6c4e1c7a550817
Date: Thu, 21 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658440012
