Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7A3283FC3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767972833; cv=none; b=e1v+GaM+qqda1plCxtCOqyH9VbPYg4sxRiKs93BNm9glOdLQ7YxscW3nMcgaUNfBKfcTNEPURa1U5FcgM9/LSZLU8FFyNnXkR2GJZ7TLPNxfewkhzWk+P4xTbDnSp82wpzHBGCez19F7Dgw+8WGjS72XymujhLfUYUyPwr/2+mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767972833; c=relaxed/simple;
	bh=KRQQOeAVIepmz07jfksF8xEKtHuQ1Do1ZuwiB+EYfT0=;
	h=To:Subject:From:Message-Id:Date; b=VeP5ppSKDMmoJDA0DuVnLp2eUlmbJ1lL31XorV6TaFNE2nbUiUpHc8Gt9cG3Zq96YECyqRgi25SL07MGvUt8O7Hsm1d7EjZcBVi66ot6ctI6YcQ/eHrf1TGgJsII8Xs/g30c+QPKQvmtRRUp7G6Ilmz54D4ZLANJ1VT1Qhc9spE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRvFA28e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRvFA28e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1705C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767972833;
	bh=KRQQOeAVIepmz07jfksF8xEKtHuQ1Do1ZuwiB+EYfT0=;
	h=To:Subject:From:Date:From;
	b=mRvFA28etbPH3/8Gbw37q39Q/8wqs3CsEy952AAKL5Npw+AYi4KGikcj0X57Ea/lz
	 aeQrO4gGWDfk8lBI8bO6CtlAIxhcwJGq2gRhmvufmClMF3zvnZMKfa+rbr5jtB4KjR
	 PoO5JRKo1Th9+sTNOpTTT4NqTtyIC7ODIuZhT2mudVygpeLAvqAI3p57iX/1u2fjZx
	 t1PS8JTgWi0G3rQriRtJas8cBFZCuTzEiy+ftk4LmpwsC5s6QVgYp+VeCDfnTmJto2
	 B2UEu0lT2MmLjSkBy4bbW2AMfpf1xrClytkTwOe8K82ggMu50qS47VegQ6Hj/YQlPs
	 iA3kCF7QlNzNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CFD26D6A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797283358.12775.14756459900647000436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bc16a579a06290819fdd303b83d83309e8634b2d09b7952251cc8447213e88
Date: Fri, 09 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767972833
