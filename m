Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6DF1E2834
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780403674; cv=none; b=FjTn6Rs9inDmEqxHykcBKXSQMvW3Dhl0B0NBziV4xGXGRxFsWNW+VmBjVzjc3G3b7jOVXgcm81J05R0TdqCKhSIBkhpFMIO8vW0y5CR8P4uVRKcNFfPIzRgdeknz0ZGD97sqendDWXPmFC3/hhkFgOGDEzTDHse/uLQVD4fZcb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780403674; c=relaxed/simple;
	bh=yQIDiUds2q+/HXYB8pycGfTwk5oLjd0spRUukOG/KTg=;
	h=To:Subject:From:Message-Id:Date; b=XnBuJFk9g89yuAfgdv6Y7TytOCxyGUQVgmuGsJxko6P+5w/Elx/NtPeyhgnNSgGTBizw6LuYIy9nzHAJ01xhY0RCqPEYOhxQX+m6rzd+gEFbwCBz1ki7fGJhPasF3TSu0yjtHDbrSfqWBaUyxLwGo1T3AlWTMa7Q+MS7vh1w644=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAsk12Ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAsk12Ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12BEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780403673;
	bh=yQIDiUds2q+/HXYB8pycGfTwk5oLjd0spRUukOG/KTg=;
	h=To:Subject:From:Date:From;
	b=sAsk12RuJDar6KZtJ4jFpn9cQbQbuuJtReXyt2vTUm0EUcvq26NTzFR0oCP/ZZ9En
	 kP2yBMg+g3ZSHv9MaqzABJnG7xuM4Ir2bcmuyaOlAVAY+/Ntthyi4zxLiV0+RFziU4
	 nOAgMvVCsyz76xWgjJ11bwwSaVNyOKdg8B810Cx5p/fIqA6FiddWGMOWUjtR7VmG3q
	 JsQ7MSY7V4hTlVvNx+y4zewuJx+zyJdByO7uLwlLCVjWBdZTSpkB57sFBV6HGDJp1m
	 bOBeVfCCb8pGCpde53q4mNCCjcIrD9gpFXSPgWU2LrWrw/8D0Rg7Ekg5BaypFXXdbT
	 ECXSqL2tM4Vxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9384CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040367368.32557.16870760071966994230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053b9cfc28ecee8ee351cddec22244806fc75465bacad387fc55eeeae9637083
Date: Tue, 02 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780403673
