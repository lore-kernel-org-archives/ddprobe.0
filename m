Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D7A1CD1EA
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736012754; cv=none; b=D/nvbkM2WbUVO+NWJ5CPFj2Y1JQo8jfP4rmQavcFjmiT/mhbloKkVpj5ZXi80flwh567UM2+AXVSD8rLtxjuv61FsjohHi0jbPiSH+/VOEIKMbDKrnPo/pSzgeBChkBy5EhSjEhOeO/mFm8XsPVlyqZEQE7ptp1923yrg3gYOXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736012754; c=relaxed/simple;
	bh=zaiQy7xN4nCzAjN8xn3ChbmHF/IQ0uzEQKb79NTNNOo=;
	h=To:Subject:From:Message-Id:Date; b=JoicP3HMFs+VrXUwPHFeMLDGZyoFrDwtRfpByTfYYDWcJoUe+1C1BlEXABLEknaBQYqtv3JgAf4OceDGMmS2bPBcuEDqmU0Sp0k4vetQBQChNqnVKs2NSeC8iC9DosJEPAyLiEL0b4t/BF8fgVPuTd5HEr0E3/rgsD9piQzVH18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENBQAsxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENBQAsxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8763C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736012753;
	bh=zaiQy7xN4nCzAjN8xn3ChbmHF/IQ0uzEQKb79NTNNOo=;
	h=To:Subject:From:Date:From;
	b=ENBQAsxm35fUld9WB4k0KYOZoEOPuaZvxj5Y/KMJAk1mmNuhNGg3dhIonlwiMNQyf
	 DGuJTGfXoaojSVCeP+wEXyHt2dW9lAx/GopXISZjTUhkKeQ3IRgquleRJlzVxWHo2r
	 f6L6OiwBPvLkNRfY5ZdJ0qXn9xDzU6fAZWVMLpNVlJFtxIkGHhBRFQRggpsELWN/1f
	 du0Fk3M72VV/JdyjdXkyrWgjUWyucYAwBdMLj2dk7c7/XtNi5wPC8BJHrgAoAINPPD
	 2XDmyltNmKTo/PRxkj3qEt5tKo99GVAaMirN0UKqEt935Gpa1gB5rfSFuobZoeS3rH
	 lh6TDnQqejGtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AEFE77197
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601275358.11689.17335484616942585265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066499024b340e39ee9c29df1dbc587788ad671a6a10d036996a00f47d011658
Date: Sat, 04 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736012753
