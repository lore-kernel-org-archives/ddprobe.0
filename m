Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2133B995B
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792311634; cv=none; b=XpSjrwJG5EJCmfso1W88wBGqlgRwC8CuEiRKk/UM+5bOkS47L5TLhpg0Rlk6Y2049tiogMd4VmoFktzKq9S0zR9wj06kAqZk5/Nvq14peIB0gUIxaoTkunywJZdmUq7risXx2BZHgjVc8K26z4PLMucL3+YcGTbpm3JxrWTq4oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792311634; c=relaxed/simple;
	bh=Txpy3Fmm/leQEgkyZdz5Pn7sXD4yQIYzibOvvWUFVf0=;
	h=To:Subject:From:Message-Id:Date; b=H4GAod0zCCEMkjaYDuanrFyozojEUin9Pkebz2voLYJawbhTnF/wRlZAyXuNxTrk3zdJUTm9bgb71+hg9BsGmfPceYP/UUlgRbbZHGDPCTfSPqbkaAOzOmI7BejdmdK1GWn0P3eL36vg4bPpOm+Xa8Brl23+jnYhsvovnh0/QcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX5U8vlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX5U8vlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BE5C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792311633;
	bh=Txpy3Fmm/leQEgkyZdz5Pn7sXD4yQIYzibOvvWUFVf0=;
	h=To:Subject:From:Date:From;
	b=qX5U8vlQXePWmJR1tWvuUYgMe1UpUuo7sd3hW9ynofcvxFYzUvqUu5+8YJwXpglnd
	 OlVUV/HubG6/mF5zSN4U7aVrHdoKpgm1KZNiAKUPDKLrAsfKlpkB8b/Bx64ODrCZw8
	 6wFWGjjWr94Fw8pIqWbknRniXDJqFSEs4WHRIXOR+heo3K/yOlDYJcZEVlb3zKDvgY
	 dd2Iy18KISz+dk9oyPPIoPyv2vNLb2VamUakSfIRw4o25OaczItFDz8o9jwevM99xn
	 jrFvRt1fUSfhJxt2n8emYcX786afm2ZagsROROX4EqIVlDa6U9i8p7wk3j3JeKgkNz
	 BhwTC+eaEi8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17C5CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231163369.17651.7272879917050502819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952d1e8152b5b57d63579e9114116851f57950636be241e13188e6a410056aa9
Date: Sun, 18 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792311633
