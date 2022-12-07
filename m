Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5C120F7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE40C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670412654;
	bh=iwYQKXxFFLOihUo7nR8vEQNAvNP2sa/IOBORV/iFoEQ=;
	h=To:Subject:From:Date:From;
	b=uXC8E9hAH/9j+rZqGRG18a2BCUkRYiHu2PHCrRbTPbdl3gFqFc70hOS+vub/wjhmS
	 vI69RBQIWueEdUjfes7IfzD2x3MU8IBmgGXoZGE5MQ2Q64LRuF/gSipxFqc/xWrPsC
	 DF+R9akPWXVWNWIZ9A9YB3cLfECd37Y0UTzXZh32a6wqERs1sJgc2GK0bfHKFscjJY
	 jx2i2qbLYLwHsygZzykAjDVLcoFary8Al1GAj8nnfK/ze1uxhM67NM9XY5XAkCwPal
	 oyYJW//HZfNEVr9dlVheKmpCziQDkKm72K8lq1vKD7FAJ63SNv81swKs/7fGofF1sX
	 Zp2w3D8eJDMMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A68C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041265433.21953.8445855552273708652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bae78d1b54b13b6d6294f24349193fe51e0c8d72037d6cac07394ede0dd46b
Date: Wed, 07 Dec 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670412654
