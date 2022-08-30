Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E4F36A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75694C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661829052;
	bh=DoBKff0rZ4nd2K4IG6oaJ1XQPsyQVECdoCMkG8pg4fg=;
	h=To:Subject:From:Date:From;
	b=JfZ0XGaPOdc9opJTmOMjrTa0Q6dqsD/PpeeAVRFocBVQUvFvz8gfziD8L2Qn50Ac1
	 AJfXkPz3utytrh4/Uvhui2Hpo3O2xiswyeieghhI5ruDzty2sfg3G8pgrtctjWsc/s
	 NfsgDOEj3NmT7x68JHNxi/G9NdOnP9QPnN3Rwdo8kFsuKtrGFR2EG7OZe92/rF/q+M
	 ekOoyJoCDP1cmSV3Z8roGUvS/FIRLJe0jO39pV9wlv/VTSB+yS2nWpxFCZdrVfdJ5K
	 thIlrebz5oXeW3WcSCPuEyDTEriz69OrD7pbRs5jbtbHQMJfj7uz4C9Xhyf5O7mxBb
	 vaJHFGK3XcUOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1F3ECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182905236.12509.8769401685426801905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475a12bb9d557b7ced96b100e47db22dd4cccceaa6475cdedb5604c0ddbdcbac
Date: Tue, 30 Aug 2022 03:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661829052
