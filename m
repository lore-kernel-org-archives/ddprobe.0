Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D965E20E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 03:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653189359;
	h=To:Subject:From:Message-Id:Date;
	bh=TSqePPoOiYQKoz7b1cxgOTOZrWYM5yj0XEDU52Dmh/s=;
	b=UTU8EV43dQb4vIfex/9e9/HwjYUVVspXXEEOkxdJxayYvE+ilFrLQk/MfaGxf+74
	iCVOLGHo1g+QirmJsbVjdl8hFs7wtwBYkInO0w1s3/+vzUbrR80RbFV/9OQCfgEslGw
	xr5M2aqDMpuo055f+5iLRw+Nl7LZDZuYKvKxqlUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653189359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TSqePPoOiYQKoz7b1cxgOTOZrWYM5yj0XEDU52Dmh/s=;
	b=BjGyqMuQ8nsR0DcKLyBTCmSXLJhhnomjw1c9eFE/XcV8DwWhyOEVcamJSA4Q6Ogg
	mN3xeqDeUJdVsFysKXyWzPdT9SQSG9qIy8tiwXQaiff9K92RVAiqR5NrGZZp3u78Tj4
	K+923CPrfcv54BHl3afaLP4xebO+ivsxPbCjuvHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9c3b6bc-4a6e0f19-5b90-4297-aa14-6325b0d9bea5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1268fee4f07b8474c17a5c9f4503e6725caba61c4fb8d52c353baaacfec46a6f
Date: Sun, 22 May 2022 03:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653189359
