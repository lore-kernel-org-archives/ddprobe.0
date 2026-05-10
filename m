Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E8313B7AE
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778390434; cv=none; b=FZ/HIoB7WdLhd77rhbvGRo6mS0VfH+Sypky2nsFqmCNQSXvjoe4i40mygqC+Dc8ORzk5IKPSyoWZiEbJWRk/PnpzLzqNXmetvgxaGMhAEKZPp0E4HO8PoR8tybpiA0qzN8miwnk4UnpN14GrramqesmRydTRwzseHfS22Cyfq3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778390434; c=relaxed/simple;
	bh=5GIx2/H90E73H6JfuJwzivfQIYgD7qg03/9JA5PmN/4=;
	h=To:Subject:From:Message-Id:Date; b=OetcihWQ/trmRJSz/K3ZJgitG7gf3jcRjhjyYxMowZWq0TEYin5tNQgzRrod3JmcCFyAHGEzQpKxIGrTOw5Md1DXLsIUqMV/EDwOl/UV2i4F5WrxMZzRQsYOUg/ZnxkL25oxvYO/CVaUWV8eGNJU4+DWaHj11a54XMwNT7tgcnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNYvsE6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNYvsE6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF29C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778390433;
	bh=5GIx2/H90E73H6JfuJwzivfQIYgD7qg03/9JA5PmN/4=;
	h=To:Subject:From:Date:From;
	b=uNYvsE6wDNsL67/8JsapgOY2Q1E/Wn5OmPEJwpfTVqtH8y//12MtgxKhIrMDYCPEd
	 j1EeApweTrJiyV9NcCfmVTSrjusM468Ptujr0NpZjobgE+/FGP1OwL+oPPVNYOoCZU
	 Gt/UtqjpMGVk9z7boTCQwIWHu50b5ozSM9ZGacP9e/zTRu/65f3N8mnM4KU7f5z1dR
	 hw0cG0wNATg0x6Zq7ThSQ3ALWNj29NfCutGLv1QzWMvrQ8U2C4QDn5uIvM3tungQ3x
	 PP6hWnWt8SJ2LqueRpkFF6Ut6XcPH5PR+2vAXTSGcCMseBzF02yc1SrbqaBjuNDnlA
	 NmXK2BG1hRPzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2ACCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839043368.23555.16959910760543800429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8683349886ed29d3556f21854dcda15f3be74e21aacd8b8df7755ed229476e00
Date: Sun, 10 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778390433
