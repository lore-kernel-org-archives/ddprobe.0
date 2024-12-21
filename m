Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28272148FF5
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734812754; cv=none; b=cbUPVMiZubf2GNQ8qOu6Ze1qx/NQI5mM7XGCPC/ejnZAyxP8xqnDxRZ6OkkS6dGr4vUhff2R5qDCG9+bQT7EAOW9knY6boNI9Op8dD5i9E02SjPx+Tij29RWbElupmDDSF/yRoC9x2ObAOKpN+UojazuY0nUi1MiWgrtM7eQ2JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734812754; c=relaxed/simple;
	bh=MRQCa98xTWStAa+vE2M4HpJyWasseFpg+Nz2O/yfRwE=;
	h=To:Subject:From:Message-Id:Date; b=Y94FkpG849sMiz6BrLgcH2MlAua/MJLaH1fKpfxB2fOy+NtoOswNmlW2vp5l6pyGeQ9iB6QrLq44kl38He3SxuEY7s9c89Yg5lZDhWiwQVgFn0HKZiTAL8hi5tc7ZT1pLfc4EulUdmcZcs35b3rlBt+z1bM3y+QhVMZ+nsmEx24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEu9z4tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEu9z4tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7989C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734812753;
	bh=MRQCa98xTWStAa+vE2M4HpJyWasseFpg+Nz2O/yfRwE=;
	h=To:Subject:From:Date:From;
	b=oEu9z4tfnzzyOfQct8Teept5ZBfFXuSULSmjzKhfj3CaFD487sbjwFpuXeRwiH8vk
	 /sBdGOgIMINmQCsDPtpesDrMZkGnkM8UiZAmx51Nc5j2px1Eg9NiM60Za0UwZrxZGw
	 XUBRRaouq/zmtfWWP+eoarCouwsvOhfREKdR9qRh8v2TuBNeJWH9yNYUfQeISpek5z
	 uQe9PWgZ36ffP6MU+wNuJ10APzSaeTjqar2FaxlhQykcRTVTVCE3h+ysF1+BuepoO3
	 vnQ7y5byd+mKZlz2M9PLdnm242FsMkGt/wTGlU52YOEXHsmlbC2Pf4I8f/83o/LEKQ
	 51hmRreC9Wmiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2AE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481275360.6688.8243331966470219134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921809717f6302db185f7786df74b00629b962d23535809c0e4e3a770ae52e74
Date: Sat, 21 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734812753
