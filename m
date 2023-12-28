Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B56110E3
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZnH7WHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9392CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703725096;
	bh=qd1p/QIuUH4h2TUQwGjzOokf8s3JmZpud9BbENCA6ZQ=;
	h=To:Subject:From:Date:From;
	b=CZnH7WHuJDNrnY+r/pLRyKR+1+FKhVzXB4i1ermCbSDaJ39uPRjbR2iZDvJYM4g8A
	 04jYZRVUjF0EcaRSCP74SpHJz+v1Zt44mcyh59Po5bKUV/tjF2PZ/KVZHPA89HgXnm
	 ZwTZJj4QLhjfn+PYcsocbKnNZNZrjypa1OH45DWFzwJEfm+jUHyHZrLM5z4PDywUqR
	 xai1XlDJIo5/2HmxijpvN1F1tTMhT91tRyvJS9RXhEKREexpi0JCrRhUGxXPXExwCq
	 Vrl0AldXUznaVXSb0xmm3dFC5STB036Y+pXehs4HTVgTgE/DojDga5AAZhI8xq9SqF
	 TQNh234ESHa1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C7DC46CD2
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170372509644.25071.14618645492861137701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92539d260c20a6e786a4dae55b276287652c57fc9a60ed6b6b56e1667b844d7b
Date: Thu, 28 Dec 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703725096
