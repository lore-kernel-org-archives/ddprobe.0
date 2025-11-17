Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D86305058
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763400714; cv=none; b=KZVAyAqVV+1phil6GzaeSrv2uXtCDwWYbMxVslviWpeaAjrQ2jMPXKaN6ZB7a/tVvJ/w8jxBmtqbxNAovq9xnxd8GBINE7SihpfyUHO+/m7HJ/K23VtXh/wzJW6Y25vd6GOblU0Yd0XZwgqZbjpv61fwlR+HLU6emTtKTnqK9pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763400714; c=relaxed/simple;
	bh=91ejGdykuX0zZ2UVp+kpmwXwGxPDSsImNdrnudMW5yo=;
	h=To:Subject:From:Message-Id:Date; b=VbVuuJAScHn/YkQtRQ519Sy98A2zQQLOcAKGnCZT9bJy/Y4EbX0gXb/JEH/blVmBDx65QleF9KWtr/zLxWBO/z+bc6DtK4O2HcD8yfmNlVXTb0nbNKOOFXFYIflg4O3U0KmbiSULqNDPUlhPyCthcquWPWhJABBWUoVNQSZxdb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3pPCgSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3pPCgSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF20AC19425
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763400714;
	bh=91ejGdykuX0zZ2UVp+kpmwXwGxPDSsImNdrnudMW5yo=;
	h=To:Subject:From:Date:From;
	b=U3pPCgSVxskbc9Ml6c5FEmlvsmRm0flgegpfljzjSdvm7JxHa9/uF9ccGNFU69Whh
	 I459bjnoqxSeNXMDsTwsY1ALKW4htDyWI++Vz0/GJbbPgOXv2NsH8F+OtXa7qYXbap
	 3VVmSYKSnAw5RQPLVLwNEGXF7tCaJLfLRIZbYM/L95gLt2uM0KPe+7qLZtDL7EMpbK
	 rDsDNE6R05ztQvaCdpG465OaUimbQKBHMzvCHhrgG/+bYwX/iZ0cp8zoPzOnZZNp6Y
	 /6yxmFF5YFubnn2QQPyFMAHXhErgPR/pBL7ojY/W37Zq93MvdRqADpU3weF3675pP0
	 hos3zK7CP7UAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A0CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340071360.28359.11352032326279592863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a003da2c1b4b84dd73b70ad3c2ece8555bf52f1eea58f6ac82a84ea33e3375e3
Date: Mon, 17 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763400713
