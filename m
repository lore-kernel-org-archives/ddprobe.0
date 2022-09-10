Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B407E5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85CE9C433D7
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662770453;
	bh=uYTu5kpwp1f0sbQu0f/jIFFQKCSWW4Akkh4OZBzQyM8=;
	h=To:Subject:From:Date:From;
	b=SDmwt7BWFZyvWKSnHsYHxLx9p3hhFDrih8PagoiHCIcdAGGsDO/qx2X0Ta1JJ651S
	 7/fZ52RRstmXhks/GP8+P8hX4AcFwdCVf6hFMlHvqS5e9h3RxjbW5iTU0oWykBCiC4
	 nlCLUMETdcxCLX+K80ivol/oeJcBaKpN45cqrDqwPLGyLsOVC1tqpNwd9/+QSbv0t0
	 eFPM6xXTicAy6ADwl9pi5U7evhWLxmCMlv3p875hlOgvJRxvxItGcpmV57wSDFKFCU
	 /CoARDq1yUNyR+n1pfQ0gopkGF+HlrSzBhg2AilX3KwVLVac6iqQju/yOPoxnVSuy2
	 pMUbdDvgupq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66560ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277045339.17860.12415349249078205030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad705b5faa07590424ddc3c89246c512ae6f93fabb0fc7704b6aac3d0e4f9b5e
Date: Sat, 10 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662770453
