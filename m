Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175CF9445
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709938097; cv=none; b=skRcCe3cPrPZQUfjA+ybMrep/dgAmR85Mx3e03tWPoLjvwSV1LWIXBa6qXW1C0ucGjfJcAY/Ada+c2SCTV8+59w+Sest8jI1VZFUHq2xLjmeAGJ8H5xRjnPuRcL8fCQqWMq4srMFguTCGaTWFdJRYRqNt7dA9vpOqd/kBJ2H0wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709938097; c=relaxed/simple;
	bh=sJr+L16K3bnR1UnGGmD+JbTHcKpPCknUhML3C+QCyGY=;
	h=To:Subject:From:Message-Id:Date; b=ZgY9pP3hJjFIXjRQdJtUPkiYdgOC3d9fW4TAMiVrgAjefQ25wJQvjs2gG7MR25VPyQPKzVqvd6DDuLGHLt+WRLSL9wGO+h0cKtDrM2JvmbcWc+XFuZe+GtVnh8qIEdFcADBiHBwY8Gl3ExwwVAAR/UJWgGXDXy6QVKL0yNCMLR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ytlb5MVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ytlb5MVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94838C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709938096;
	bh=sJr+L16K3bnR1UnGGmD+JbTHcKpPCknUhML3C+QCyGY=;
	h=To:Subject:From:Date:From;
	b=Ytlb5MVJS7IaLsmCB82hrS5NvANRwwHkg1308P/0gCcr3dcdGCipYJy5tj9HzSvXG
	 H7fMtzsI3wJFXeEVUgVLv626ToWVx9zeP+y27xvzm89shTAJB52EqPaX/bFmWFUedl
	 mKX9Z9tHaQOCJOUNlfo8xNkoIRq6H4018EVE0hrCR4VJ74d0Ymk2a1ZaLNwcNyKGIt
	 g+FXW5BIipKnOpu/tfpM/r0+T/ICkNWnD0DpT1TN1LQhhe9K8VP6JRzfMabrN4nPIB
	 VJB10W7YsYqzTzNgx8V4KbiwmJ0TcW2ErDCX1kztlJJv9a0O9uCVumh13DzLlcgaY2
	 dx6SnXzwcC09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 779B9C5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170993809647.17348.8122445034078457587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4ed0195def51065da2d730f321819a33e582053ddb521bee006a9a388a5633
Date: Fri, 08 Mar 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709938096
