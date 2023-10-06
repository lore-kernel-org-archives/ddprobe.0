Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A16F33982
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 17:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JieZ+AUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5479C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 17:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696615028;
	bh=mGPWThLrHqasPcWNMiP9/B85Yr44eAM5jMb9qFGG+DA=;
	h=To:Subject:From:Date:From;
	b=JieZ+AUMeATPg6PHqFVdXKWrsozE/A+1oQBAGpBHwO+bsaY1EwlLYsPuGm4FyPHia
	 mi+lb7s6sxrXRU7qH5a4VBcWGxPRFknVP1af71HHfZFZLAD+ZrakIOWx98YiRF3uPH
	 wW6wrA/ZV5liMerTQ1gHZOZBsS+1tR5UOGyWWqszHG8UsdAi+ljBECvDrEQcEyK8I/
	 mkQ09gz6nM6YVvxI1n1fd6KwOnXR7jrSrBPMdpAYWnytUflOoZW4mkK3tO+f/yuj3Q
	 Xe4WwwChg3IQKhRQiJXylDcqpxcGt214mA6ty4h+ZSAeGsNCYDlF/joruPmKNWOPap
	 vOJPmK8M4LGtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C80E81E1E
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 17:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169661502873.15564.11321497814275648377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5379539162783a3ae9af34fe48c12f9eb37c11767ac297bef3c4a51478ecc2ad
Date: Fri, 06 Oct 2023 17:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696615028
