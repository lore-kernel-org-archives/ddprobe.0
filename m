Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FFC1378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648018585;
	h=To:Subject:From:Message-Id:Date;
	bh=FayQyH7uLN2ObXZoygKaNTDrHAxav8siEAgheTaZY4E=;
	b=aT6qyyKWobk3YUuBS9ZZAHJdXyHo2sMrdocluuYCfm3bQl+ZOsf7lsUKMUOrP1xe
	PTqHIcm4MMtpMSOQ9xlEAPTkNUBhqIxQTd3NXKn8hgdCWg8C1cny2ex4kQPcIGsMeeC
	HVFSQPP50ET3+vbf2KAsAKFRvUp30lAQdug+ovX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648018585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FayQyH7uLN2ObXZoygKaNTDrHAxav8siEAgheTaZY4E=;
	b=hEl8cWsenPNrg9njRiJn1UrtYZg+2WPKaVGDXonXGw/NfbDUYWBFSDy+vCs5p9Kd
	dMWcIT20uz2JXZasUhw/jhKFiSGhVDEujOvK5I9OCQ2Xi3t6+issklZ+7I83O/W3YG9
	XeOKy4OAIfvKr2w0g4tkoOaZUG9VHpHTvUajXQOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb58ff4b3-191ed684-a7bf-4a74-b8b9-769b821302b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2ff7163ad0bbf9d8097a370391d6f3fc5c9bb53982b59359e27b1a6b2e0feeb
Date: Wed, 23 Mar 2022 06:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648018584
