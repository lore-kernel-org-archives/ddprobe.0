Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB1C160
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D788C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661646052;
	bh=O4hmG1eMXwG08bakEiu/s7+veOiVjZsExcT3vP+66kQ=;
	h=To:Subject:From:Date:From;
	b=cx5wuiBlAYhqsb6LiLKONMZdwB2XgUdnoMBq5jhgNHxE2YfbWobzTPooTfAq18SlQ
	 wWvDU8qaBjUovQj0Es5xNJQPQc25uHoGa3k1VGYeRrQLTLBd0NnaYaIaEnGLmN+Bsu
	 X8dUe1TcrreYcTIDKDYaPLb0NIV6EaWTSRMJXSm46lb/VsXWpRJI54XYyMmKx/fnhD
	 WvJ5oCX3Dn4DWvwO1MYWtutKXLnAm3EC6zghWXmQ6Eo1ZtP0E99+MRfSzfDnyoYBXI
	 Ae8xIB0KFRbvcKXogzLgvRKeMsWMJ4A9n0XpdsXjpqDi2AreQRtuOEqHfmKJZXQjyS
	 Ups0pPX+vmr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61131ECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164605235.16440.16284632732257945173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a668f20ef67befeb48a0db61c388ef66f0a6fb1ea2f2ec8d3a2dc401789ffe37
Date: Sun, 28 Aug 2022 00:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661646052
