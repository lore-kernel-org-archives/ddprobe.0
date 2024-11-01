Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFFF13BC0D
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730429753; cv=none; b=BpPbf1KELK7dhyfAkAFvNCDkcwTTiZjvB95reGHvl+FW1Pzubf2t6d6rJcd8LxDo/x8NSdU1AiE/T6aEi1gmIvagnBo15n75tvLceHf7T9A0eDyqpPh/DaQrSRm7TGJADKQFlG45+81orQJ2JBBTGXUuy/Gw3Fdg7jMo1dhWyRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730429753; c=relaxed/simple;
	bh=mtTPQfrBCLhO2OGCcjvBtOR6BUazp5TN8LdERdWjsFs=;
	h=To:Subject:From:Message-Id:Date; b=nJnpTSDzZHlntnRHgQ/zoimAlDVFj/+/P4kVK5nnYLQyjuhtGYjuTGmWoiIJmxm3oKirtaXiXhOgUCwK9vFua/EaJV1zSHxqxa0J3fI5to5L73Kbegs3TBrezg/ljxbhtlSxhC4NtsrIVl+hGcFKgQhhvTYN9bh/gGHMgcqLC08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv+47S5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv+47S5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA114C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730429753;
	bh=mtTPQfrBCLhO2OGCcjvBtOR6BUazp5TN8LdERdWjsFs=;
	h=To:Subject:From:Date:From;
	b=Wv+47S5qG5ZUJJHkygm5ctnkYnDlZcEIYuWHdq7nIlo/I7sVA/3X1i+bviVbOQPHs
	 SLRjzAV5ntGYiK05HvBz1edF4elEth7qSbGN9vrNSxRY7bMotTCqXU8FREacZMUJbj
	 wArss/eL7TB5/hkNUiZbPL2JYvuPN5oE8kaHDS0j61cx3ghzhZp7jlLB3GIFLDAgyY
	 oYO9Fs93pSRQWJ30h9gHxPNP/1DGfK+LZe17YOBpuB4uEBpgbjxNfGWEZ+2lALdrdA
	 JCcHQTG3ggotiUKsqQvcUvC51nBlJm+Nio2ZuklsxbOKPyOnwi2HzJaIY8PwPsAQ5g
	 6u9XpytOUENiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D4E67493
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042975359.9621.13180961405316809001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961a9478024dd749cf55576477831bdc24c1ccb6092215967e5645fbbbcdb5c1
Date: Fri, 01 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730429753
