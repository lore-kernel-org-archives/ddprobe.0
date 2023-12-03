Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB40EA8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/gsQ7lF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FBDC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701576496;
	bh=gZcLCUjFDzAaHGYXxAw5W/X0/wfRhqWQJFJ7yaQ2ok0=;
	h=To:Subject:From:Date:From;
	b=J/gsQ7lFXWV+Bs1tQS0iEY0uq+/j3s6gENOgle6juNOwaQwcRTYGhOf/LQqQnjTKn
	 ySonr7Wnreb9VoV2nLnsOka4hEyK26HADpWePUJBeTpOkxRwiwolQxAoOt7R4QPBxo
	 0IJ71yU357M7L0RveIkF4vifRrd4mr1QM+M0ZQzmYqcQXKF5P2yssY+2Bhy/gqLgpG
	 BS/1sQjmSUVPUw7sQXPWRnVarOiTWU0pVTV4ydIENFzR4wcrK1W63kOu14ZZkvqFVY
	 +4ke5ieeTt00l0ZzMOkGM/uNWzmfkTfOajey5sHDI/XONBGgBPGx+o0RMHLzIubVAK
	 Lecy6/mlzY8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BBCC4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170157649642.26023.7331527605892693470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc25f5640c1b1746f9074fe6140c53dbaa1eb9809e850ea3641819f72272aaa2
Date: Sun, 03 Dec 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701576496
