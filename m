Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6E913C914
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742585394; cv=none; b=GhyheU7E2xPjkduftDTIlhPx7ezIPGYf8lmlmHl/1IrGoCI7yyq6XoNNGfPPQx8tz0eosGFtk9sUsHASuud0dI+7AG7g8Rtl7IM6SdhilDpUh30PSLrOuQ7yCr0/poJ9jZP7vPKjTjt17FzD8Y0l/E4uIh3GRl/+EjuliLbW4aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742585394; c=relaxed/simple;
	bh=B8sizkqvoCsr8ka0y7ochCeGzcO9zfuj4nSx+4xibg4=;
	h=To:Subject:From:Message-Id:Date; b=JKKxXgyrQdB5K2pltn9qlDUekYQO8K81ZJx5fYipZ0KWYLOoOLhRur+oLMGScYU0FPTzgIEGld0N40eFRAmiZhH+aG7RYXucMbmQxLobVPnPvZqMaoCNDckO9AF6iDy8PeLuC3dYBEOQ9zgQ+KqtP6c2wHZAC7w2B7jWR699gCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo30Whil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo30Whil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EECC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742585393;
	bh=B8sizkqvoCsr8ka0y7ochCeGzcO9zfuj4nSx+4xibg4=;
	h=To:Subject:From:Date:From;
	b=Xo30WhilNlgRHU90cgrps6GKbueaEyWL+Oa1RAN1tGpo7xreQuHovEJqkhm6AFX50
	 TolPR4fA/tNUjwANTR1a7V/btO/rtwkcL9yhcMfRxcqEw4TxDcbdoLSfv6SE66Xb/E
	 RKTxlcT4IeT4rYqIfOeOTYD+f8xe6usv2vF9qCc0k4gfGttC+mzWVYjYcaCJRlwBMu
	 wcZBTTaeyxUc5h6yj3lWr6jmm6Ehdq5AdfIMQne60FvSj8taCd7aeFT8WjYK9QQMtF
	 WztHf4aEVTZEr0OYMxLb9K+1M7Vat4nHuqPLl45ODOQN9vI61rrteVukUVh35kcdKu
	 5TkqQ99YtGxBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B7AC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258539364.9185.14861708277223542144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2965a0d8a2f5c87b1f30e746e033ed664aff42a8eb1e207061b6b6fe34bef1
Date: Fri, 21 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742585393
