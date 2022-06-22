Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA74A52
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 00:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655856779;
	h=To:Subject:From:Message-Id:Date;
	bh=C31u8oqrXk/rHYFfsR/iyUS6xo7ElzGAnOnwB2noacw=;
	b=Wx9ChkKz4JAQi9Me9zT1WaK0cefCJgho/V8/8zLt1AEbhlKnMTKWMkamOvGSBI93
	UlG6OWipu9rDXFEehmlJEebIZnTe7WbX79KLiieU+DEqr2tFU9vrI9jddJn2ZuBw909
	hDMED2THP1BlJHFp4HxGqx6RQhCmH1wOj+cGpVMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655856779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C31u8oqrXk/rHYFfsR/iyUS6xo7ElzGAnOnwB2noacw=;
	b=YonM4pdyYqoQmNcv2duHc8GFc7sygEPOfm8pJhUHESDIkoISQ3OTIcL4K5iavprn
	+MEZf2lb0W6mhW3l58WoYPTYiLLO8OM6uxWAcMcOowMubqoFBa1gApEfpILxR2UUSvJ
	QsbqeiD6T2jdoKq465OGS/78vANo/tu0dU5E2+hA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018188c14fff-e5c48e60-9806-4bd1-96fe-6bb7e7f2d49d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9811c8deddbaffe248f3b731ba73af6d13b27da3bdae004f7ad6078dd5ffc9fe
Date: Wed, 22 Jun 2022 00:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655856779
