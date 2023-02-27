Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48568374
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 01:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1926C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 01:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677461165;
	bh=vVEvo3SqknonpK9akPDP473oLv+1lXug5vbLvWdB/lA=;
	h=To:Subject:From:Date:From;
	b=FpRW3FC7rSczmPsQ1Crr001BajxO1JeysI38fPqLRUEZPaH/bK/xcTLOF2k54V6no
	 X8SQmIcZGXlxJRhbUZ/siWgfYqT52fe4g7O/2f9K1oPw5q7LyIpbc5rldZ05hXGEau
	 Ez/zJ+xVhsoZnmPvJJyUxEa+/C9TYrc4i6Q/UixrkbEaZ56UoZCXLo6L/ahMVO7BZT
	 82YPSaWzQM0MxDYS8s7W+JuFSv2d9c27Qh2obUNSpGPlExHCS5yZs6Pq4xVjMx+OIa
	 q/kEJJe8dbAPq++auKSCpwqNWrFkX9bxKwhn/vo97/c6wCRKgIPMDooMghaBDrtnkS
	 qDyA/Wu0KAWZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27C2C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 01:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167746116576.29471.1895080388551909480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50f29d309e05b1242d01c6ac5b0b5f61d33df8fcf668457712317c5d2ca8d24
Date: Mon, 27 Feb 2023 01:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677461165
