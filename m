Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809ED15B2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E539DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685675765;
	bh=8NaUBejb2h4IhCl3G4JzXIqpUduJUWMuYygufXBbVoU=;
	h=To:Subject:From:Date:From;
	b=ZbQzOF2YoRsc6uqscQ12ZLXqSdMQagklMstfhQ3GaQPnGqXX8BCM75IVDJHQ7WcCv
	 v/GQbG6DrIb4mkXR/V1/rJZFZb99DLS+Wfk1JI3PIJb0v+MSWkx8n3OS7REgik/Lyp
	 VHCiXq/9Lzs7Ax7cvBmeOwLRXuE3gvkcRtTjEglj7QjoZUJh9zTopV1dbzvljlhFSF
	 j526DnvdO1yFmGbZXbeEioYwbXd2GgNpwD6LEVq3c0O9CK8ZMsSHMXs5yK5kUM7xfL
	 0Veh6kdYPJpl2HlEhGHYRViKzcNghlX64A1YaDEtt2Uqx93StHiEGLrlP8GhWgmk2U
	 nBqW5TXs+qqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AB6C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168567576578.4005.14186371123385211190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d30b0772defb9e504dddddabbbc513c6829653e561666ab05411bfe0e125dac
Date: Fri, 02 Jun 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685675765
