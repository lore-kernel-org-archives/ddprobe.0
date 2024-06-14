Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427A3142658
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718347703; cv=none; b=bP7XI/WmWdPXdiS0C3LW5gvfIzLHnPCbYg8wJNZZE/WQOFKWO1/ZB2LzApYbDZ4dq+eotf9wkAxYhsZruaoLF+/b1WFbqKFi+2qDMNYAsfqGVIpPbEl7lF6Ipy+VsP2aHkIdyquxJ35C4OncJcfozIRXF4txEj3o7jx7PiMKf3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718347703; c=relaxed/simple;
	bh=RQf0x0DblNVdsGfB9fw6iIlD4P7jnYWtxhICeq/Vn2s=;
	h=To:Subject:From:Message-Id:Date; b=SFOarAJw/EvD2ueM1GoFyEQBPyvd+sr/d+D1y6U/+kVkjdyUqWjL/tP8aBY4LZHvZz70yVtO8LacQt/yt6w4dSPDGUNM5+Hp7NgxXrLv1ckYARrBNIcLK/y7DMJR12DcpnFyQcOAVHGI5wPihJM5spJ1Uqy8JR2kX3eeblggj6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD6bMMDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD6bMMDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D761CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718347702;
	bh=RQf0x0DblNVdsGfB9fw6iIlD4P7jnYWtxhICeq/Vn2s=;
	h=To:Subject:From:Date:From;
	b=oD6bMMDuPaEm16T9gRHCZlX1Hc2JawJPAUWPJhjW5T/J6QeHL+rQZMHBXxzTSVZdo
	 7SoaI+wi1BGuyuDUJj/5QnZEI78hMdOTf2lf3f9KI2TAy23aS2mxk2mkLYCYu+oAxD
	 1tUHPmlKX/Q61kQmyP2pgnQ9vaNvO/c7Ld2MWwmokvSEzflGRDD4siRUt2Wb9/HEux
	 QHQaO7n88DoU9lpSziNhn/ok0Bagu5wc1YQVP0nznrp6DzkDnKiu5P2CKpcnDty/5E
	 d/yKd+Mmma42C8sDaXbnIE8ITWeqJbttdJ1Oi9NcHrIiacsae8xlZAVbenrgOOJJy9
	 6SK5BiD+iWgPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5772C27C7B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834770279.3219.12474033063715736367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6785ac5a595d647d06ed135b9be5446f5750e5884dd6b664ffaa301101a353c4
Date: Fri, 14 Jun 2024 06:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718347702
