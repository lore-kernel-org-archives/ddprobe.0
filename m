Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AA13201
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715990543; cv=none; b=ssFPEKswh4GQwzgp7mFkjA2i1rokkHBcpA8pP0D6L7Iw3bNo2qHB/m+lwlVv/MA9F16cScH0pW6hMxwUzZ4qwkKoKiU+nxRa9/9ukBk0q84SGsUwGNG8lRgRqI/Si5pvL63ngl0TLKW8EcgsPWbhynOgV1yfpYFNK0C/jDjoF/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715990543; c=relaxed/simple;
	bh=2HrK0TIzwndiyf2+zhi5mJ6TnGpVQ55sSgAIlVksM+E=;
	h=To:Subject:From:Message-Id:Date; b=uBtPvs123nYs9Eq/uQKCQpJO9lJL7wgzLLoSDd0K9NpDOO29wx/k9AL9+MllCJEk6tY6TucEk47rMW0dWquvRL0Y+nLBIJMko33ND9UvMjoTxN1UgSSh1LqhBQYeX+v9PgqI8l6hZ1WLFCa0Cu9LcCbMxpSq7sQdtT7yNI0Zo38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf6BcjJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf6BcjJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E8CC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715990542;
	bh=2HrK0TIzwndiyf2+zhi5mJ6TnGpVQ55sSgAIlVksM+E=;
	h=To:Subject:From:Date:From;
	b=lf6BcjJvx/5BTN3JpmIIBC6iB1O++9cgW7zxqCeUShTM2CvHeLX+3DPbBktxoKjy1
	 nPENjeTmfJTDXK2OoOueo92eCEnCioII2ZHtIFMnNfpBnaDVVwuzEVlLc4OIhbaJgW
	 oikALSxEltRfh9O33DjsfCN8SgqMN/mVFCrkBulK5xyyj8slO3hZZ3JyfZptloxb1v
	 yoS9IoMCb5ZBSBXUkUK8WwsDjmhAzZ47po+HZLEzPS7fmCcrFs+3sXRpN2CWhNPHWL
	 5FmOOZNQDpnMNNN8oA/naudtJkDk1fUzxbWW93Iv44pyN6VL7LKWD+z/aJ7uqShbXf
	 2leLQmsme9U8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57F7C25B7A
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171599054277.10539.15080777209406858636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4740b428c6a9cfbb8b245c8bd08e9e41b306862a5fefe9580f9fd6fb2ce7f7c3
Date: Sat, 18 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715990542
