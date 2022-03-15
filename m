Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6618010E8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647326484;
	h=To:Subject:From:Message-Id:Date;
	bh=nlwqLHH2sUQAa+Sw+1+uvx9v0+ibPIib1S+T75tvA7w=;
	b=dTRlAjHHBqXBvPhP6fMQKboFOKdV+iPRd5u3tyGJ3pZGiEx9CcQrtFiXf9oZZEc0
	Hvf2IqRdFI2yoi5O6H/US4LskGIgq2K9n1c4VvNe118WfSMZeP2HiHz5/FpwIpuftdM
	UPS/y2Nf4a66J7qWe/ShbqIfEeaS6HNo3aDTvrOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647326484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nlwqLHH2sUQAa+Sw+1+uvx9v0+ibPIib1S+T75tvA7w=;
	b=SWTMEXa6LDDBLiG4PlZVSDo6iAO/Fwh7f0n/t0N4rgIrw8guMDy9bUrlX5dxEgj1
	pTv8vA1ildwkXPAP2QszyeH4obTWLGBDicz8dHUYXibgxBM7ODzR5+uE0ykVkOaAwYx
	W8w9ygFeRikzmS7mSRS22uB3pkDpZ2h3DE9LFSaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c4f5902-67cb6593-3911-4b14-b078-3211fed2864c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09f50d863aaf1c5560742c3a7acbd97097fd9a04b5aaa0a1727c4abd9c693e3f
Date: Tue, 15 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647326484
