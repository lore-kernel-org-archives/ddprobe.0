Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C6715ADA
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCB0C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686670028;
	bh=5qwHkYA8IGK+z1pg9eWh+2k3ohKCVwfyoq6lbzvbQ+o=;
	h=To:Subject:From:Date:From;
	b=lAdQODNWeRI4JaCHbEMTI8UuKqWihRbcm85W2/7+HrUJnAnGhFE2K4mdFAt3PieE3
	 OxfW6IdyTrkf45UnHtlqgQRyNi+EeCYcGNCYoo/KOU2JHaRFr6NrSpya2hpvSkltxd
	 lZTfTC/OGQ0psVi2HjNgGBeb1qtxECRGnRJ4+dFXqR9yZ178PH4PvAVuNKJYool1Xm
	 xcQYIR8q6aBTiMkyRht2NXlxxT6EFO+niEUq9F0ZhjEMWoOBatHcuwmDsCqiotxeX2
	 eEBugCg/MON0rUz70M5SGHjF865NXL+VKQDnMyYkYIRME3UMsAIEgIpCUtVeMzmJ52
	 ePtfi/4fLeQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0FEB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 15:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667002869.6914.5573281168635257691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b5ce59b87a2ca0d74194d0e0934c7fe1bc3c0034082d6c1ab9f2586cda2b7d
Date: Tue, 13 Jun 2023 15:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686670028
