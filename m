Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DB938657E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777109853; cv=none; b=MNWacf6IyzNwHESzwP6DKPGKf5cux68kMYfGvqbr0FdE01Oyd/MnGP6UNmrAUFRwPgxFX8EQK0cRgQ7PrncRfNPoxie22OlMwq9R9bRFY+52f3w5G/w3ihPbKPvPk5QjQ3ldWZeyJtUp3BMIefB3ntO8TVCBr/kRdfc9JgWC4HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777109853; c=relaxed/simple;
	bh=0qNd8Np7UxADA99+3mj+EzbhXtvB+W1dvnkSCTIB+1s=;
	h=To:Subject:From:Message-Id:Date; b=WiuCfAostM6juN1mDTFZgp26yX0ZB46ssnE2hHTjpwLnEaHw3aSgvh/WUiS/zTQGpBe5Zm+NsrOxemwlNpyXbvs3+9hxfijpDwquDejSmmx2c6HSBMUQZk77EX2LzpKZ4oUtw6wEWnMGyqVl4uUj0pFNTJ62ATSVNkxAbc7acAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4C8ULzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4C8ULzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E75C2BCB6
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777109853;
	bh=0qNd8Np7UxADA99+3mj+EzbhXtvB+W1dvnkSCTIB+1s=;
	h=To:Subject:From:Date:From;
	b=B4C8ULzyNfDCfDggUhf9mqx/tTNjSnBo6QZjpXFR53DmGVPVAYKXWuBLeqcU1Cmkv
	 BHfegiM+rq/g+70y+vhx6mv4PrsD0D+MKMp079YvSJveYDbotRBCDEm1bucsXslrAM
	 JALjf9kcQ+oUTpuj3en4CQMD7TWz3SXN3sPzxQuXh15phL7WcK7CjykDLD1jfiRQHp
	 bKH+85AwWSXOgXgAzVgIl3igRtBXKBAoarCBAx/U3QvpEzhxAS5jrEXSc7wp27aaBJ
	 Euc1WdUSMrtCkH+tjjqK80LhPF1uM16YVyEFdv97394nSH6qDWmYbTXqIgH7F2xEU6
	 Jz84XX0fuSfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9543FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710985368.22312.7345156159881252871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41958ae251cee112b58538414ba6224560fbf98ed9a14f9f81932d3f0f627bfd
Date: Sat, 25 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777109853
