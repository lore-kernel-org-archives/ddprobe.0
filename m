Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743486FAB
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FBBC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687733588;
	bh=qXLl0B1tYzXr96EV6f/VegUPnxLugy1sB0ZJewOTWyo=;
	h=To:Subject:From:Date:From;
	b=SqO0EN4EVJT2O4irl1aG3SpVsCyPu6c18QMATLTCxbE5sAtRgyLslmILKDlbdzcs6
	 OxmhS8tpobdYPa1J2xLcXs7q0rkYgJXqWX/oXoLT7Xm5QqfuX5wniSDVmoh3s1HkqW
	 L2ZEvQ29H9XhEq3J+hTWYqcR2cw5IXIAjJAv7qfSyejewFqZWQ+9Jrtrkv/e2TJA9i
	 U11HfNPCU9lMOQfH9CmRaRnvus0g+1AFm2Upe1P6E5zixbsClpWL6C46CqDoeGNguc
	 aBlPs2OCQYfkHZbNX8V9eTBpa8B94FP9as44k7RpWpArpNUSLNH53ra9u9OzHo8EuQ
	 VdTQ+YctM2WhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE44CEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773358872.1202.7316878691849589762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d75d9f4d6770291a68be2b5ffb5bddac2e3974510098a248ff7b356f5d98d4f
Date: Sun, 25 Jun 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687733588
