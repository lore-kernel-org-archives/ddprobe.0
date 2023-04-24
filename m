Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378A47C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 06:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB497C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 06:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682318525;
	bh=nAdPezJ/2nSxBTozYEr1F9tNiVK0uX8VmJxzNaOxdNc=;
	h=To:Subject:From:Date:From;
	b=dv98SYj3n9Rl6V1tulew7XRFmpIxAc85jNY+kC8PKhysR6msQHen8O5CvXUXMzIe7
	 2V4NSLzoKc+wkD5FrhP+LlIwpQFORh0+khxLOBBiHX7GU6aTEqY/Ts7J4Rwe/02KsI
	 Qsw6rTI2NsNayg8Y+Y22EPlMn69jD04FbzzLJra+khpGpwJg8yejCms71VEqNOWvKp
	 An9VX0yFBLVZ94dejNuoq5LwALW6RKFx4WjxUdzfU8ro2iUAghYI9xoVhq+in9M3e4
	 Qi1pU79UOCyNedZ8ZBYyvA+waPN5JFCLUoHzqzKoXO1hyzOvY4p9qBVIcXdMnNSG9x
	 tA4MW7f0YtHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAEFC7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 06:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168231852577.27907.1358147105573764684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a95ffef787da7f7068c6e5d777999581eb5bf5a6c5113416ae4a3ed9b912aab
Date: Mon, 24 Apr 2023 06:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682318525
