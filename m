Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5967F3E16A5
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791084034; cv=none; b=gkjSHl3N+5DyrIB8yTkJZataSMBOYGNWo0oUb05y8dUpYca+CjymrCPTk5VS+YnL1WJ/6tiFfRVtqdMeEVl35piNmuP9jKzceyDV92A+5VFHbY7KzyPuReamPTpYdcEXGxQIOPVPvyIEcU/8W4G6pCRjLkA5pSW7jmoN+OwhU4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791084034; c=relaxed/simple;
	bh=MmIDRQP5tDIVV6USN8Mq88H/wVge7fvPKZwVhozUepM=;
	h=To:Subject:From:Message-Id:Date; b=YASIhld4bGVluKzOExNSWL5lmE3Q90DgcSCKKCXasPDU0Wdmt6lhtI40jmUz0uSfoSpzxW8+FZgLuDolbRtq8HQ4psQ9PWj7RD7Q+zACkd7M8AZ3YVF18tfjUvNo5ODEN1wJ94dr+AZkDCRRD7e9qKFa3h4Uq99XUY82/SwYn+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHQMD8DH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHQMD8DH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0733C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791084033;
	bh=MmIDRQP5tDIVV6USN8Mq88H/wVge7fvPKZwVhozUepM=;
	h=To:Subject:From:Date:From;
	b=cHQMD8DHc2gJO0a+r2yxbmXE7aFaMU3kzG9l+vatd5ZE04z+1Rs26xKtTtvQn1C9w
	 ojEjviay6wjNy8GawrdoWloJ3ioeyb7bz5ePtHiYWAXhCwqQPViKB5+7PaddMfClE9
	 FVvr3aKwTC+Q7BQ0ALeLy34NVXxMmUUgR+fdZr8eQIC8FUv1zcRAjLvH4Qzz4a651q
	 fBTlqDXOXT0zpg8gPt9zxRKWCVeG+QK1hRV8F1Gw5e4bwfREhxJH0V9tz/6qnrZxU4
	 VHz9i2zRbuY2boGCkRAH/H1dZwu8FfwtFmEaZTpjz5gULu1WrVScu/FRFlvhz//WSa
	 sUUg1o+aUjG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7DECA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108403370.30225.16398442065071908769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a518762d8728ef576da88bb55bea312b040663e00b3b504d810e05a03062d4
Date: Sun, 04 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791084033
