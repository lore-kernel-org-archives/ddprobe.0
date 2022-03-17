Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E24323C
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647497784;
	h=To:Subject:From:Message-Id:Date;
	bh=TTEKzLL8oya2FxMOZVNmqWLK/GfIRRD8NcE2uTeXpj4=;
	b=TMZ4PK/0fR4cUkt9cWpS0jLYOnHQgdU42VYNBjDbKIpoYEv8/151AwdeNpPr/Si7
	kTBAvo2vJvvIh86sUxq7QZqEP3S2XgOpvQfB0t1QZW1DUS/OnsZ1s3bZP/VyCOQmMtF
	qHokLy175w24XM9gLtTzGTu9fxkZhpADQ3yOjpcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647497784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TTEKzLL8oya2FxMOZVNmqWLK/GfIRRD8NcE2uTeXpj4=;
	b=jGZmCINukMhnePt4fu9xl8vr4SUpVHm1MlHzGFXO2flBfDZNhnV4XDrCGRxIPTlC
	BxSsmHwUhL1CivGv1GCaGV3Cp57ll6jcikWBpeqsv/+9XFR4lNSv43GdTNtRsst3eys
	oyJMBCbyGW/Jr5LF6TRPYAWGzxT2JzyIsPhTO23k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96852da5-49f4f847-6b52-4223-8d93-16ba7fdebb0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f08a347221450f86dab837888be3cf9e92230a34855cb58613643b2dbe169be1
Date: Thu, 17 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647497784
