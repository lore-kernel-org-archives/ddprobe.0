Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270FC17D346
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754241595; cv=none; b=oDIoi+d5QtNBeLjxhnpGzOqjQMGYAbymmdH5XzMIYl6h3scPGnxZl8bVJuJvnBCDoAOHOOJuX/o+If2NxFqTAwmA7isO52BE6c2c8nHc/dboXzbsD+0KgGjwV1t6G4gC2KmK9FGXL55Aeeg4dqYM5VIo7eRyBVPHakYBVLO6IAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754241595; c=relaxed/simple;
	bh=8WST0nLS0R2Z/FHD9TglOtZeRMG+FsN+LyFrpZ5+jjE=;
	h=To:Subject:From:Message-Id:Date; b=Y3ohNrqhFumF/Rmx/vFJgma+zcZQVtWbARYR/cDxivFSIvPZaVmPnp2JUg0mwxMIxIWrTV32WwH2ySi/v7XaqKWQzpQdOC13V6C8YHZpbWVciRfiIoKn3lgBkDiHS/eYlGETxQaATWDgmz2PuBHhAbxiXVqM3TBw5i6fFOAIJpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCBh1Jtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCBh1Jtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754241593;
	bh=8WST0nLS0R2Z/FHD9TglOtZeRMG+FsN+LyFrpZ5+jjE=;
	h=To:Subject:From:Date:From;
	b=hCBh1JtbICUfOj13zhYPaBF6THS8JiKDQ5MACpqi/G+TDLkWNilUVI/wRi513mHWN
	 6kSrlu1sJj6QT1uCKbCtE3mOF3cmbXmMQTuIsVIQVC/2a25bSJMzYcsA92jCtmi59I
	 JsAYsFFYB7y+1nsVqnMTHvt615+mK9jsHdTX5Qb1FwDeqUWXmoBI5rz51T2HLjmfd9
	 s5gy87sjjbNXlTt/WJoQ14mx/vsP9Jb3xWfanErGskHh1iaMzFp5eBO3b0oQx9lNWb
	 qs1UnwsKx9ozZ14JwCXO/d/fNXI+MuWksASa9FIuxZ5CQXS5K7ROGuYCDCOa+Mx/GG
	 vWVaMXLrg1itg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED89C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424159357.8700.6263028797961094442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2470ee6293a476a6aa0e1c73dcf69f6da36286302f245be02107624dc21259
Date: Sun, 03 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754241593
