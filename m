Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4491E1B815
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713883223; cv=none; b=AqkbiOixyR0tU9UYTRpfWnpGeYBWxSWN9EPyV7PYkbwLI4/zIJ2epWBECeIfv/SOhmKG1HRt+yzva7G/5TnmZQrAyYLsgoN+STq0zXx2Tm7c6alWteqQ0TCPA54nTuebnfuxhQdAGllwDzIcE1OSpCIa0gOlE3MC61kE5iFNYL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713883223; c=relaxed/simple;
	bh=SB8mwo/cs2c684p5Vkmk24xx7xIrRivlVJDq4g5Wxbg=;
	h=To:Subject:From:Message-Id:Date; b=O7pzOKhCQMmhHz8lBetjNDgP84PGCNhcvkVb+kF7585efu6JAY9+6Qf7vdSCOkSIrGQ20eSOk9eZJfY0tYZVcx1K2mYDPmB+or8km8mPJz2cu6KSXbFEJtz1nyv2qeIWuFleYh/Ogmum0Hacw/v16aQ/HW6he3jHPlG/L+K6Njg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6Nup+UH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6Nup+UH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D515BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713883222;
	bh=SB8mwo/cs2c684p5Vkmk24xx7xIrRivlVJDq4g5Wxbg=;
	h=To:Subject:From:Date:From;
	b=T6Nup+UH+/i3WB3eGWskRpVUBIlw3rXxmhCKNZgDLavntFuubYhnYM3bHFPBtQx3M
	 LhvunE43lmMbylES+QYtriNiOO59HW1lgwalbg7wZVqoF1Tj3NIq0OGoeNSIvWEXBc
	 Rkr/S7VL/xORyv1jWVg8r2U/QuZfpOsgt38eGQvdkvt1nIAaPSU985UqDWqRQcQmX0
	 G3dGTQclMkQHZruKCt8zJKrY10N16S2x4xR+owHy3+eQHi0A00bVZ/PcxCaUC32Mlr
	 9nrmMy9Eop9Cq6J/CPi4NlieVjPM2e4qBHdYfTJanuvJy3PjWadc4nuqSK54n56vHr
	 1vGGfKi0M72Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B60C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388322276.12545.13618498037834930755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814461c2fdbd37178ee7d095caa39618ae3d90a59eece4970fe37c249a094306
Date: Tue, 23 Apr 2024 14:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713883222
