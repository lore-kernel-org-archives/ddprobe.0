Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7827F2AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786281634; cv=none; b=rm7z4UZkD4Jh6Ov5frRwYSwB1waWF6nALO2sRYaZiUaB+WfWY6ThbW0yhov8+HAeZ39Ouq9/YFJRPzVTcPMurEfyvp7eZ1TViiip1ReOLu7CEAMTgA3cKXIeSO6ARn4O/LsKBErf7A2cqKXBE2G562vPvRtO0X6sWoBYQchXNX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786281634; c=relaxed/simple;
	bh=uA0cOAqa6KUkNTwdCY+GcnvnoKEdnBW8cvEU9JySAq0=;
	h=To:Subject:From:Message-Id:Date; b=BwqXc7/0Mm3yi3m+CoHVJTQ3z8E3hPEdrc9c3/kro6epLthnSXgu7O2Z6UWHzy/Kz5gE71Y7H5l5CJ0jyWr5Dsymlkf/POZPweJoK6f6ZrifeiiK4vU0Te6VhE/S9iieHFYizAROCc1LfQPQ/jGe6HTtAJS7FUNaocmcwVvAz4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF1U3Qrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF1U3Qrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FA7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786281633;
	bh=uA0cOAqa6KUkNTwdCY+GcnvnoKEdnBW8cvEU9JySAq0=;
	h=To:Subject:From:Date:From;
	b=HF1U3QrgqizyOHBV2CCFb0X98TsOzK9QXOo4drBOwSS001Fh8V5dxNTX353Ez07Xx
	 gifB/n/kCvi82a7YZNhOMXwjKjrtDArEo3bPJT0tNH65a0imdelOrI8FW95WJXipKK
	 C7q0JTGhJz4JsSokKsXSvUAn0qbGBg21C5kT5ZNVbYwUQXUc5HGT8/LvmZUAEth52f
	 0YbGTb/qjDi1rhkamWjcBV+QjBYte12I2Y7vcS/Oxqf1Yz2Lmgp+xZ8HOk7MAfYhnp
	 WZU72HrfZ98uqpmhbiUrnlZQ4W0aZYDIKTEXp1BoeAb+GNVXT3JcFG+cOqcZgL9Be+
	 QF70+yb7d2RyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC99FC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628163368.343.10480679309782562180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db01810ee9afe9b568625871eb8a5d22bc8377f5acdfda910c19427d2ef18dc6
Date: Sun, 09 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786281633
