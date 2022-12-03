Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D882C1FA3
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C03C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670037654;
	bh=avF9VVRFizKWYJDM8QbjbXoARRejukWgcs8A1YMu82c=;
	h=To:Subject:From:Date:From;
	b=V4hNFEtrO54gXGxwT1vUErwWjijnwjiDMR2bpuTaluKzDcI3jN/PeSsk96axJBtRy
	 57Mn/SuJPwTgsluEGlNYfKi1uTZz8eTVpSXUw/+QF2SS/cXplX/wKStUnvsDRVfPzW
	 wbJ8jGvPEoQ/NdvmXRXBekTpp/pxe1Mf0oD8qarI6osBtDKxtNz0DnFBfprQuXUyaf
	 0rYZfZhp8peS5rocb/lwP/5azvpI6YLjdL6rMqPFx5B8WCs5WBs8PibY/yoXCVCP6l
	 cJ32B81sDLwNjSATXGcUhCM7u/ZYcmPua9xtMJheRn5e+twiKv7WwXCdoQrGLVSYse
	 iG3K5598E4UmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545E0C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003765432.21433.8281283214185112260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7316e25da23ee548e4826a08aab13fe0fc64c8d6b07c400d2a29254f79ab58
Date: Sat, 03 Dec 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670037654
