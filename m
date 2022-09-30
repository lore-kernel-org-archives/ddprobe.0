Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4231FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABDEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664527253;
	bh=zhGn2VV4qFD9n33N5xGgvU3wlBxG46iKkGWKcF2ST8E=;
	h=To:Subject:From:Date:From;
	b=szUmbmZwxj+N3KAjL39lvYKGQv4SVnuNACUQodhLTB1VN+YCbSC79bLSuxMM+pn9h
	 9Az/OFXrep3fC3DEB+VDaecGbMhIuQpOJtPbjBira25iw2FU4vG7geKSD8wFoMvB7U
	 vP4ZjkCmwZO2NOCt8T0gKtvUzg0q+qCdwPWBgd6hJVVOO6UjkpX6Tif0jdNnQvXFTZ
	 qRbuFY7O3NVumu0IY1w9gxTSYDuHWiFGqbl5hHnpLrfZdY2A4LSvJonJij+T/RhmvC
	 pNOn44MMfdWrt7kbQ0zFhk/Fpefy9p7ezY9SjYDR9PwcX3eWKY1oWACSG+2bRxSXHu
	 JvyoWRZUOA1Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54894C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452725333.5375.11303694794334190295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba8da3cab57b3fc0f4def25688ff6537ac4c75d531296d247a94db77429054f
Date: Fri, 30 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664527253
