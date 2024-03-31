Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4F98BE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711877297; cv=none; b=QUl0OWAgDqRgCIpyW9xhAJXIvpXTfxhOyBwurcCKRInD2Tl4paVSVAbZ/WlAjNHKq6CU17zjdwhG3zqAxoHYgMZdzqF0j8DmQx0fqRj/51LGt62exmUyDLWMZW3/Kiv4gqLlPbHwdYb49/HFu0BrrT9sc7RrB0k/YiZuJtCPUuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711877297; c=relaxed/simple;
	bh=THro6OBNVlQ/1dgOK07VaPRQfGwdDn4JzjwOCBY4RTQ=;
	h=To:Subject:From:Message-Id:Date; b=Wj8wB2te9hxNZ2UyE8jWxFkNghVrYlWDWnRwLe4M0VKR3VhVVloZF9l1QJkFcRHL+KoADw5bl1UzsoMLWtq33Ek9wyaVh81Z8apm2shAPRx9ambndpjpwIj6zu6fEsybvomjTBc2K1LBSNP1eL10Ny8cNbC2Gpm8bDRhTSnOsLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuYGrhRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuYGrhRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E0DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711877296;
	bh=THro6OBNVlQ/1dgOK07VaPRQfGwdDn4JzjwOCBY4RTQ=;
	h=To:Subject:From:Date:From;
	b=IuYGrhRlGT19LJ5jpZ3yBREncBGu3yB+cYpFomKgIxJJy/1hLsXqcNOdJKYXjzwnN
	 DAChUk1w+LSL7fuyv9L5BfxLkFWDOVqFCdmqXHzvEoW5D6TPNECnLGtPyQNL5HDLoa
	 PeI4iL4X+eXlJztrUO+ItZE9tt65M6vhe64XQjkAlErhMh5wgm+cqTeXcxIzII5qEL
	 HJ00B51tEaa/UObmxBJ3h22nTN7euCYCGTx39VBH4xDNYgn/8Mkyr6hE+aSgQzvn1B
	 VTYQ7gcnDZQoxF0kfdB76Ov2pGN8mJd6mTYikX/f3VCfZZLOAp4ToFGzKO807VWCj4
	 j3jlleiS0Daig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693C4CD1288
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171187729638.14491.5068964742546280032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9e389e74973245a45b729528d9fbde5111ec0081b49723dcec015f673e141c
Date: Sun, 31 Mar 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711877296
