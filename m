Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBEE8BE0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 13:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0C5FC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687525389;
	bh=FrMc/E7Um4fHL51BwYE10NTnMidOc30LxAtfHoRPGOE=;
	h=To:Subject:From:Date:From;
	b=CrQ1tMasFAweZxsOYSvjuLHY9WSfV8vo/ciGaXTCj+w3x0lxjrfRtePbaSf41943a
	 Nf6kwveP9G8QaVRqc15RXUA+OsKd2RCVYqmRD4oFsytJRE3O42AOYlNxC6AaRb1QPj
	 1LMBYZbG1/yiBzHLpTz46GBGe7aqGA8jfdrfqdgxFO8CPC2CaF5aeHM2jptVC5Qbtg
	 t1bohu+UgDen7ej8PeySNo1emzKiJ9UgbuihnPzUYDSB9m7e3ElwU4JIW8IR7+2TBw
	 Dv3cNXf4HoU03B82mkiqy7wEuD3f5k/DsyU39auNknds5RQ0Z+SwzlRjbCT0QyGIp4
	 WNMWlCXuWGVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1D8EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752538882.8856.13931704143444713267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac20340d9add83011b6952b52750ac40ee427e59e994927889991bf9259c434
Date: Fri, 23 Jun 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687525388
