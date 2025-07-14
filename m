Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F46123A9BB
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752499795; cv=none; b=m4sTTZPYbZ5eVewrNy0uq+5sHCf6Ku83//1FGv47nClqNqmwz0f/xn/tcdteDBxCAosNfrWXqC8raunEBV3RkctepbklBwjynJw7bNLtXqZOSpaKun1wVSlECLJ61QvnbqXGZgnoPf+zsm9pT/G3cJBd9DcKa8JgzIIsV74EHd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752499795; c=relaxed/simple;
	bh=0YgRmSOWPJIScjbi/934ahiLjVN5w40hHUcsG6BHELM=;
	h=To:Subject:From:Message-Id:Date; b=DZUhFnB8WCgElNNgfn6KpYvitp9y2vqWWJKTpKgTWNrpx4ETQa3GKAWLl9YMNrBF8TGOyX90Azg91X4phk+YqmaWpWKLHja6jGK2KQicq2m1Bo7tsTaPtRy1bAMbBXduhSGAGJI8cIE8n8u+CKpFyFNc06hE4XnVbXA6t4YoLII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9H0XvcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9H0XvcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752499793;
	bh=0YgRmSOWPJIScjbi/934ahiLjVN5w40hHUcsG6BHELM=;
	h=To:Subject:From:Date:From;
	b=V9H0XvcMBUc/jQJg0y1uJzrKt9h4BOk7UMPMhsxRhNGRJMspWdxgYqfm3WaKivTUV
	 ZKaMXTbdVFME2xjG900HB8yDOCu3k188l+JWdmaIG0l0yy6iTr4h6w6y12+GwkAlSV
	 bEM68Kt+cWw7a7A+cvEYoIbU88+Xz+2EtaWWf3Otelwh0LrN8aP/X8WMek9WIpOaEC
	 3m5JQT75nTFAtlPYsKWnGfRyLhE1GkPB/nBC/AVF4v73TC/uU2JH70KGM4frhdv3JH
	 6hMCoYgEq8X3DUgwt/ESPowjxkKvEAKIW6F+FKpxe2z8GuVHBSqA1fH5u4/aPkLuoC
	 56L2bMSb1erbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91413C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249979358.5736.10619840632660490188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890a823914045db671af7465d96214528a5c8da59f87496eb898bf3b5ca7eeab
Date: Mon, 14 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752499793
