Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B7F7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654930679;
	h=To:Subject:From:Message-Id:Date;
	bh=BmVwJ+Ot8/0o8iboZh+Qv87LNOBXAKdbxwODT2jX3uM=;
	b=b9qM/UD5XvluT4ODHFVkbd0UD3kBZ+aWbQrMjRsg/Wb3h2g2ViCXivU6fwHBELB1
	26/HpiS4u3jpOYknUXVLGlUQIIknldPy+glGjyeEQT6wLu9qJwk0uyv1hRet7u46j8x
	RIyxb57i8jzYl381SXKV81U6JtGdzKVBrvca+vms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654930679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BmVwJ+Ot8/0o8iboZh+Qv87LNOBXAKdbxwODT2jX3uM=;
	b=RHKQ40PzIGMIT+z/thV2nJT0eglJx6dBnK0+hiofyeJrqPZ2V71uDVbbRTtyqDQE
	bba6o8aIWBW2NAhj/K5Hvdl18dszyaODQsVTHYkeZQ31TtQ2CNJfrO5zn3VG7yKqnJE
	oGagDI8p03/5kU2xvpkS4d5p3KP5CsObHLW8EKYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181518e25c9-c34e80b6-f11c-43ee-ba0b-13b49ca6aaf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02ca1c69c85e124c024893615dce11df479d84573d598dea27ca2e804e199267
Date: Sat, 11 Jun 2022 06:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654930679
