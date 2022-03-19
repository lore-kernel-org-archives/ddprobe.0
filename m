Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4AE539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647681084;
	h=To:Subject:From:Message-Id:Date;
	bh=doRRCzaXZY2zwqam2UPBYqC1myR1kDPCCD6dQtY7H58=;
	b=h/MwHiywVlOHXN5dHvKDXROfB0YDwM3FSdv3S0wURGP8Cra+Br9FdrqX2Tkwu44x
	VdfpsFFAsIsf6gM/PjqqGFNNc2iCAhu2WPClZ0H85KZKgWEQ3rbwiitjqZdLxlPM99l
	awDArzBMzFLGzYT6lOQIFbXbOGGXlaO51TDFuKew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647681084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=doRRCzaXZY2zwqam2UPBYqC1myR1kDPCCD6dQtY7H58=;
	b=a5agZ+mhQVkEgFvGAcfehQmlupuRtAH7ZhReew9c+vFrntnj0Yb+LaIk0fC9wd2n
	r0dg5+dte8iAnkNNxdQKseP4oJwU3eHRxVCaPVVdiB3rAL2oTLdIRl9dmZs8LDmsIeT
	LVnp3m8CTdWPoEhGKOJUgxlCOpiRMbRyB6ViBC54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1721d31-1232e2d5-6cd2-4142-8cbd-f4578ce845bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08fc51cbaa75d0ccfbf7ec47f9c3d3d3f77bd917343cfac8b0ab49e1cbd400ca
Date: Sat, 19 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647681084
