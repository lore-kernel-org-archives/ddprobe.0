Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0E32517AA
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774623894; cv=none; b=HNTiowUScSrNRajjw3O+iT6R0CVHxNyaqc8w3SgoDdEytdXyiJOR4tzOlA6J1Io18sqhPZjJDZOLvxfy0J6RslBr3nIGQYJZGl/jBsUPlk4fqKJUdAuF7JgmKhlRYj6NPtVFWfaB9/HkNDjmjWHPuYBhDy8I12/JZYTJlrhUVzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774623894; c=relaxed/simple;
	bh=wFf0P5q2fuM6kYTofj8AGvoHNyHdsR+3x36qq7ZctpU=;
	h=To:Subject:From:Message-Id:Date; b=Nmr1JrTqxjt7thtPU7GbmtcZBwAG+MkG1HtF4A5aBV7UZWi7ruX1FUj5y1pw42QJfsG9B/0lFiNMTV/wAXjeUzxR+IGmj5wC7jxfyEjJ/SKwQQ5IIfyI0Nt4k11Tiwny42eNLv4S7QcIv/x2o4sN8YNAwTtHoNwf6fb6lPONGyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzSS1xnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzSS1xnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE7C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774623893;
	bh=wFf0P5q2fuM6kYTofj8AGvoHNyHdsR+3x36qq7ZctpU=;
	h=To:Subject:From:Date:From;
	b=EzSS1xnLMUcFdkB+p7jBGw14WsC93PpT+hNkWmADNd931xeg8zVtq3L+sFkfqFT6Y
	 Dt2iJp9PnvgaDi1iXVUt41W51YwxWly9/+IadGNS8sK7zRCo+NcgakEqox/uVvdmMi
	 3orT3yxhlr0G2FwYhZHWs5AAIbBsOALKDvinYGORkdiW8yB/ceum2f16aLA8WCqwWo
	 IYm+pKFoYDo6IJQKhHgwRqwVemd1kScXKWsyIdHPJJdnu86Ou4VQ/cPkk5aUcDvQpk
	 WNkuYxG2xX+s/k5RQVUoEUp42pJul6DnhWR3rn+2WoQ7B0VdXnJKtOyQHsjGvxz45w
	 z41mtiV2kFKwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927FB10ED67F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462389359.18883.5523966088094301328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc306882f3e4f8868583724f5fcfbbad15113b13aa7923c351794f571e901497
Date: Fri, 27 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774623893
