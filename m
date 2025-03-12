Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D252561A8
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741792734; cv=none; b=QFG6nF7g7a9P802F2yJ5wFHqYk4K4QQyuNQxfmWhvfPZxhsc5dLaXVtmalFthHT+ePxCgQxhyduWlWOMifkLchyGaBDeiQzzcOjesrrzFUlcD9LoNcTsLjeZE8P2KeXgoA5P/yDnGtudQzuF6Ici2+C7Iw00esZorSXx0My1l50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741792734; c=relaxed/simple;
	bh=ZR87NsGS8KaCD7YtlzwlMoFO7qBIY4HP8JFVPzBcQL0=;
	h=To:Subject:From:Message-Id:Date; b=ghFQBCNogDTV+GIAIEjztJljXVnCkNvySskUYpOg86NZaw6KLrFBdqKzZPHrMbdC2928IGATShLUV0Vc9YsD9Rpi2oUZ2GthfKozflH402IEj/c2wSR/QTtiTxTTfdnyMJc31OOwT+PPw2ZvRzyW/DP5AcEBr38aekZg7NH+A/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH16hHvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH16hHvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741792733;
	bh=ZR87NsGS8KaCD7YtlzwlMoFO7qBIY4HP8JFVPzBcQL0=;
	h=To:Subject:From:Date:From;
	b=bH16hHvQoY8KAyBDRuyEZT5mhUY58a55TWSKOAiNNVIHVdNrNqjMNVrhLzGUe+Dr5
	 PbNJU5fzpOetlP+0jgDKCNc0HQ1Qnbha2AY/P5Y9ldw/EzOLK88NWIxVFxdZDPKf0p
	 OThyj0z/S16MVaetS9ANTUdTw67u3GsU+Y4PtGPw+oXZo+uNp2HNHPODGzrZWZ3Fl1
	 K1IiTo4xszI1a0XAkqsJ23pR7lgTnbTAgTQJNuNhlRk2ZUsjPPtCTtPYJG/WUGmT7m
	 o0dmFD3wYtGmiWqH4Ke/f7Yh91moupowU+/Nmw8R52UP5MvhNxlkUITcJ0ZHqGOOZS
	 lZ6Tx5Z/1N+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981C6C28B2F
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179273361.11712.4616520656226970739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fb3fb5ad946012cbf7cc28952ce3b1b0c4fefc788760863ce969f9b32db589
Date: Wed, 12 Mar 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741792733
