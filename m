Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E0C4C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647675684;
	h=To:Subject:From:Message-Id:Date;
	bh=53kp6p2gngjRxH4GrOFeIVIaApLc+/ZHK2XRnLs3br8=;
	b=Wunj3m+EZjLoRG15MzwqiR2D8wMJwzojEXbiiLP3JZXPJygyE5RyEhuhrZa5yxbr
	Rgwnb9oJghhiQkKGjxbFxnicQ4UokxCal+wcap9SrtDRdKETNxEocuQSNtVym3J+vG5
	noMb4HLYSvxzwvq+jomya/998V3mutuRTzEboVLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647675684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=53kp6p2gngjRxH4GrOFeIVIaApLc+/ZHK2XRnLs3br8=;
	b=jf8DrcNUVNDQSrrEJAmGZKbFjFjZIHeqx7QVzaLcYJ9uzR8R/MHfb0+f6nIjYRla
	ZAR/y3fIw2ChY/4kwR93DHlB9zaP8Nx9oVSsDJx1pJlEfp49nQ/KFdol6TdCFPLPP6j
	Q84UyE3n/74I12qXcp3S3OO45xBXeZnB2nndD32I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa11fb78c-a4b49ffb-72aa-4c76-ad41-7e994a792668-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc6ff997219213eb85269f3c38c1e9b9ea8c9f5bf3545684834c0bc06e5d2a71
Date: Sat, 19 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647675684
