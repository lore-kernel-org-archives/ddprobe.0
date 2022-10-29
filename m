Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA88D15CB8
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 658E1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667043654;
	bh=jYFYATGsDA056grOO94bHwxx6KhWnViV+miuQoJJmgM=;
	h=To:Subject:From:Date:From;
	b=E8aFqH45hlvQLZZ1HYdCC8xusWvA38/1jPXvsjLlO+DPsQPk+eyVG0tvrfPn4PJUO
	 LYAU/y0PJU+/sXWsn/48FBv462sD31YMPbHUFHgkTbPFEM1Iqg6NuMrfjBewRwtN30
	 DsacVy4iPwihPtB0gjSsTxB61TWNXs4aWjI76ti5m0mPOrN7kOimrZbaXlZGJCR+XW
	 0h/JR6Z8DA1mkf1nStzsECXM13Dmbd/foVDAcdT6sSGD9U/VqAk7IJ+K4NmSeVb+t3
	 Ofqjpq8L+4lad+Nl06Yzji3KT8VNmrsZbxjv2IBzO+5vyXrwHI6WqoBOuEdnwEATcG
	 OrKqUXlNMsm4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEBAECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704365431.10119.8155319226945877958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c0a2632bb2796c68eb2ce16eac2f442d7229809061a16ae21b7d57d1559cb1
Date: Sat, 29 Oct 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667043654
