Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30843315D5D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773371694; cv=none; b=sPuNiXxx7eN910pOdxGZuCeK4wi1+qt+HtsVazo+nq8Ri55T/PoMgGWuuJwGfO8Hy3cyKVVvTrF+GnIG59E/3ogNaFvMkonHu1LPEfXzImnvoxVjVy2zNK6gg2sTbppEGPa7LDLWjM2NQ/A1kDdoUeayrndVK4HkTIQazcURLTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773371694; c=relaxed/simple;
	bh=+x5Kuhbn6HeD0aFQpbdA4tU1spi9i8MAXi2A7xSAOOA=;
	h=To:Subject:From:Message-Id:Date; b=n3Ij3EQy22gmZpRtDjTNdPYG5GxeY2ZutVHTzgoPGsKNDk290KkAHd7+qm89zAbTP6vTrhWdGjb9dN4xdw5jp3ldRrBp5P/JcCbKXM3qjq4/ERMgLw/8vXLMd55bcwwEuB/dJ42wBChlR0kCrMOUUViNVS2vgKD4u/Ibntb739k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM3h/F9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM3h/F9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB94BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773371693;
	bh=+x5Kuhbn6HeD0aFQpbdA4tU1spi9i8MAXi2A7xSAOOA=;
	h=To:Subject:From:Date:From;
	b=TM3h/F9KkERCbjhdKa+bUF9zydBK9jIK1fK4v3MXIj1b4u0C2GatozeM/jnSJ4OzF
	 s+hd7/9TfFy2jHRDVsc/6I6CUAIjTpNldZFJo5QfBKtIw6VabbX6/GFjyEose7rPzP
	 hEbL/h7XkoMpl6nNqvrQzthIkSMEvkFjixsLKD+RLAHEFxMyLP+vTSo11sq3Bm3+RF
	 Ln8mTsT3xXGbFn9QnivUtg0FDqoxSxsudR55VsGfb+R9nFJeX2rSWcbb4nIfUWMPc4
	 5GZzGacGXsG26MV2PcuttIb+AV93uuD1d7K3bmmjxhktlmCk7XywCUOaXsu1MLziFN
	 pvfsNbBUhBbTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D2106FD6C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337169358.26974.8917390869930494336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776f11c6f1c84de04da3543ac609b0f88a76e55764b9b6e5b5053bc5b6c41900
Date: Fri, 13 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773371693
