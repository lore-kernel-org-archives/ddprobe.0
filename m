Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331F84A08
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739504334; cv=none; b=tp48fnOufCQgMiDxDLIYCTiKH/weuTpgDmDqTVAollwgdgwj677QmZp5XD0nxkRiOoix1u4atUSYRPfp0J1kttKocU9BJUD4Uwa6yWCSs5D/7waA7WJZI4HFjr7ou4QCsKOxlc5cYy+5jljVAhjt5oCLJ7VWZHW/K3Ife+Vxw8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739504334; c=relaxed/simple;
	bh=6ckAXw8yMyPGlx9ptrIOT0xWddFvfk44iuRzK/I/h1Y=;
	h=To:Subject:From:Message-Id:Date; b=SKmD++5FngQdRfqFSCdBit08LZkAyQQkyaL5eNyHgY1z80QkGRzqeI0CAA1EvOBQFW0qz1ZKZ2nwBNlAlQXBfyb6SC4DMMpqwM7gKdQqI4JAeuX7f5QXvk01vhp9d0KX6Ch7R9PPYqJslVubFTQ6E0iWxm9dHmtgLFCKNxHjun8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDlNLdxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDlNLdxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9AC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739504333;
	bh=6ckAXw8yMyPGlx9ptrIOT0xWddFvfk44iuRzK/I/h1Y=;
	h=To:Subject:From:Date:From;
	b=tDlNLdxDGm3U05qUARZlCe92FWp4H/atVtc2rmPe+gsfsbEYzO/iy8EUDyG3T4t43
	 s5Fwq9slQH1Dl6FTd4TErTm+F+MPFqcVd61LcEisCHocQ9O1kAG6CjNx3d5Ov7PDru
	 oWsHDWbcnH1IT5GMeOQHZ9FFsS/us9DxOwkwk38hb1lAaTHMYmbdlBXJJerj81G5+D
	 FgNLYHFujd602X/X/2h1z7vrLzFycLJ5eOYQhXKfNIU/W4V26ItLydiAiedHVhl2JN
	 4BWIrJrF/IGZDtdXRAMZgfuin1slSPF+DIuB79tT3FwOqm6vACGWjYCzoGBeW3+OS6
	 ObBsEaBbUx8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDECC021A0
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173950433358.26222.2624717091319690139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d353667a336350f7b1f06e0da250de72f8aea7073774832b082202ccf502fab3
Date: Fri, 14 Feb 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739504333
