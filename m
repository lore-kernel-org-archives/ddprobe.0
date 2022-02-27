Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA75323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645967184;
	h=To:Subject:From:Message-Id:Date;
	bh=kmTGdGHEpd8g3B07EcPw01sg5zbSOt81dTbwWNtaJ/4=;
	b=dXlIAN4BrS0E9EZO+kRVH+Iqa/N6TJltvbSsfYhdsibFaQpeyVGSrTHoWazlxVSv
	D/yjOtLgWfn2QAkKP6DspGs7qdzyR4Nenq6hcTkm8vAJKuMgLDVH8R5cV949g27iPSD
	IU+zGInwjIT/NY6K3s1EsuvIiqEh8d9BhaZdMeM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645967184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kmTGdGHEpd8g3B07EcPw01sg5zbSOt81dTbwWNtaJ/4=;
	b=arHtyt+4gTEFxGw59KpJjY9ljw3GZCRyLLquaqxUDLiYjy7RkRKmMB4fQSvc+rZ6
	ltOi8/ac/eOkTtRXYaJAUoAp5S2Ab/rh03GfBLLvZAnT7hElu5hVAO7sMAV/5G4NiEM
	gfOKsuZIf0bEvL80CYK7+t0Z1+vQfry3fXTSDVf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b4a136f-194b2936-f1ad-4089-80d3-85ac2756f8aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c5750b2044530fe801541b51adf0a6f82d51d822c2e90d17170567a59b3cbe3
Date: Sun, 27 Feb 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645967184
