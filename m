Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC210E6
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 04:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651982578;
	h=To:Subject:From:Message-Id:Date;
	bh=CSmaMMvPJ7R8Z7y531apLiLa7gT2GdgWoEA/dUjamAM=;
	b=lYOe0Lkf4nDterkiXdlRdNAx2K/JLiYK6P9xonoPW/zxErGTTWSHsyNftFuEQo0N
	fa59vnjdSxLDt58x0NIRuSQdFG7Y9e448MGewG1OWRZ9NDqvAC6YFYD4tFA4ghvF2jQ
	l/3izcgEFDnN1kTAO2f05ocDaQpj2CMaYgpisMgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651982578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CSmaMMvPJ7R8Z7y531apLiLa7gT2GdgWoEA/dUjamAM=;
	b=AcgjX1HoITgELTnbQG1DY98/fLSmyZ8A+xhSkGgg5m3qGLX9TBGlcqd3u3WswC8Z
	SPoAqkf5n1hbx/W76ZVEIbrR+DYLGTDHPj52z/lL1YPDADt7dQy3qKnS5oCQ54evp1v
	bp7diUMx0COSaePjGK8zQv60uNimY0EgBRfcgLzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a1d5b23d-c870219c-d105-44cb-97ab-7010511f4119-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc369e908d978298bb1551abc1ec72af36ad71586e9786f498bb387812c7b796
Date: Sun, 8 May 2022 04:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651982578
