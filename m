Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C9C627
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647153984;
	h=To:Subject:From:Message-Id:Date;
	bh=B453sWWsGXEN0BbAxyyFi4Z2O6keFXjn9mLfRzkPHMw=;
	b=NdjOA6ztaN2CgDGuZjV/qLJe1/B6LzIgEvbCeTMK8HETqoqrKyScpdt/6rAOG+rf
	6Rb6WdqfkLo2Oq1CfH5aRIzI0LbF8jLwePNohganri+64JA+DJU3QoSrFxgXuZq8Lov
	3tI87JINZ//d3kiBHjyjjytme9COUvzgcjLfpTyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647153984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B453sWWsGXEN0BbAxyyFi4Z2O6keFXjn9mLfRzkPHMw=;
	b=JxiaIv6DSXyM604ZfxrOKFNGPRxAv6UMP+SOxiM+07Or84Y7LSNy06LhxeFkQxTb
	oYmNdxzdh/3f1qcVfW8a9s3UIZbHQMkloFJUaN+6JJBPT6N9zeuvHx/mciFxRiih2T4
	Fq/YdJKQMuxZh0AI/gzE8mh7mgl3gPxnUsMqNrig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8207350f-7ca86eec-a1c1-4dea-a2f9-f3c2d35a6939-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 317f76ab66ba6a97f7577d99d3e4f5191c130ab328b9702ec5821e72efa3a32b
Date: Sun, 13 Mar 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647153984
