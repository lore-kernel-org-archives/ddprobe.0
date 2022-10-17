Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AC4A52
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD34C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665969053;
	bh=Ed7VMEOZdShS3VSMs3b1giLkV11uoOGsxz5oGaDd3eY=;
	h=To:Subject:From:Date:From;
	b=egcdkmst1YI/qTtjURqx7bcvYfBMhmKuNbgk2FfbzvovDXP5CuZvWoTIR7vuHPIAR
	 Md1XbLaGzIuPWG9wmQ707IFNuYzlrtuELBpPbV+7Tu3r3pDNs1sZK84lJKDaJdOETD
	 Ltu11YnWUbjYOVFsGN6GZQh96tXFnJdR2/J9BtBvITzwMeIwe0pj3b91arsyOwNVel
	 oJHUmZfnSDBSXb8QBlnG2JtEezWa6+VttxhhJ3bmyQVm6ZWAG4Fjxr5kP+1zfVH67z
	 SyLMa3x30F+9Rcd4/H6R/S7O4HzOGlDQppJIMkVfemF7XjeL7OnMWvsVR28QsJspaf
	 RjWGtl/LczD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58830C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166596905335.9946.11258862785137652501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cda550900ef4dd7c67b9a6fb6977796acdb53d99eacac849a509fd47b52e26c
Date: Mon, 17 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665969053
