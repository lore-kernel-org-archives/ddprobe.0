Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B5F2F4E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 20:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655498639;
	h=To:Subject:From:Message-Id:Date;
	bh=uHbgJyhpd2qF8zzUspQnG4FSaGH7L3tJ5eNCHa+XflU=;
	b=CVr/i/WMTRp93PSchf/4MPSjCXT3hy09K/rI/uTfcijzZy50h/lbgmfoi9CMg253
	d63698bv0LKOtYlvvV+6xRWpzkpc7nTgTbfwpjLoZ0p0iPB9qTVyo+fOziZaNx86K/8
	v8kM3kNNqVxcfB+2R238jSVbgvUV4WH2Oh6n3THA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655498639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uHbgJyhpd2qF8zzUspQnG4FSaGH7L3tJ5eNCHa+XflU=;
	b=h85FrlQxspDIZnESz50NNDoEaJY7GE+knaTdTyd01EtQPwhhAW4ikts0mwOxgBPz
	IQVHgpxj9CvxNW4ZU7da/aiR437H/TjB3si1faLKn9SF5AOuYyMVidj3kWVlJq6/8iY
	90H4o7Nl7eaWdEt1mKqRqf9i4IYFBTrn+9GRPcBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817368878a-650fcffb-96e0-445c-a2be-8b9163aecf07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bf9fd419e4a03d911a911e8f5795b0f7fbd3c85bac211f10896aea3df497eea
Date: Fri, 17 Jun 2022 20:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655498639
