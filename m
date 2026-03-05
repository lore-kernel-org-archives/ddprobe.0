Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6632E889C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772738693; cv=none; b=etVuKhzbzT7mREtXUDIRdvg1sO1kl0BEb10NY5c0Xfc0nV0Rg1Kp32AcRBDEblidI8a/XkvaoRdQepVANaPQa40EB0AqyPk6QTrODbn+IYonAnWNzLHIPiFjK66B3XT/YcA6+o/j6TDI3hIpOfa4ki2HHdmur2a6FfqAHSUkzNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772738693; c=relaxed/simple;
	bh=ZkkN5lf5CikdaYWDH1eVq9AmXsODjlpL/FqSag4df0o=;
	h=To:Subject:From:Message-Id:Date; b=SuKf6MkmLuSKrac63MI2mG5GVPhbv6jI0X07GAQ3LoMVRFltJRWQPTBTJFDzrgH8AimrOKdJyVqqmJrR2Txj2LS/dNmxSp/0cXaxly8qiCXQFaE8VMrQMZ0F8qg2RMnQQJTrceOeF8byNAucZUjLP/NKQBvBOtSutr8DJ8jCWZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoHEosXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoHEosXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD12BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772738693;
	bh=ZkkN5lf5CikdaYWDH1eVq9AmXsODjlpL/FqSag4df0o=;
	h=To:Subject:From:Date:From;
	b=EoHEosXpDzqzjYFd5BZP/M8Hqzz2xcoMeZXMnkCQgIjBjgM9T6unkZvCWTkPcD9q0
	 Lou8+YxahOZOb5pG+vguyRgXvTvwrsk/iUoFkgn6DHWrOsAf03BbBCrdNm3y4cZ7wN
	 AHFhKtgxPFd6reLm7EotSfnyJg0nbQG9/GzEQj00RLAjyjkIxEm0sBa06sHd9HAPQz
	 9Nn30HsvlZ3rDc51JQs6BIgLCMiy72TYNRSUcFl2pTuEX2nNHHBGiBEJG6f0Xt8ejn
	 kR13UyblV7+wY8cnNYjtggpHuLgFPNoGUio1XpM8SNHOcJDE18hFgPs7aC01wwcR3K
	 q0mxWT9M9+dcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3A1F47CB9
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273869363.7084.5919827771140483786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1237aeeab946a8488969a7b6863c6492e0f0465a3c178ee6aab69adcae5ccae
Date: Thu, 05 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772738693
