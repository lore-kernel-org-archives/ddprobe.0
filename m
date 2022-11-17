Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1FE191
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694EFC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668653454;
	bh=cdwI4EdC35sWDFXYavZ0GUHlU2CI9qaXfQAt+LASyMY=;
	h=To:Subject:From:Date:From;
	b=VG+3TLEt/77vfxT9gZkbOftkCbcgRH/HUq0wdGdK3V80xW07yoqfH3nhKUimQq221
	 /lXMsryBabO38PZ/0QgFUG0ciXE8KSfYSvW6e87zusHBhKqcTqjJ/wkPQa3G/zERBT
	 WHdTmtM5T2MD+B/APf3+bilHnTLtnDuPuH4Jwu9a+gCU+YXtgTJxT5JVSgJBLXkdmZ
	 RByQTz3lxG1w2liYr53yzjiQqAFyCqrowxT/k1pUAwLUd4pnZlHHyx3pjXmL3QIZa0
	 Y82vQdHzEdqOIlT/7awvyo5oQ6SJk5EFQI6VVrAo4jaeOBUso1B2z1M+729KB92QPe
	 fW9Ka/Epz9LxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E789C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166865345431.29121.15200596144799409396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad8ff1d25fe2ed12a3fcd9e8b585eee0d501952dfc75457c02ba3413c2a9db6
Date: Thu, 17 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668653454
