Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C51F18DB35
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778814034; cv=none; b=oQXcgdS1UbUzGPMsx+w7PW0EEOCA07S1K/toZFbtE4uTNtyy6KF0r3NK/U84FJulYPf5c3eNI9qD7Lf3QtRm05eUNBHScBeRbEGMzzxgaAA9h51Z1GxWcDL2khVwwCUffFOmTYldFRPN2TJG32pqR6nLaol1FZC5pJqq7NtxPdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778814034; c=relaxed/simple;
	bh=KYaYti2QMzRKgSPkeTo57S48NTQmYSu+QTudMwRQ6v8=;
	h=To:Subject:From:Message-Id:Date; b=qSCdM+rEt4NTIeInL6AqNAttdPIbToCo05cPwrfqZSNHCzBKJaMzuFB8W6PjhssDOMsEfjZh3e9yaz8uA+pOFtaQFdGVrkZx161nG584/0WHlJzyf8PhfW1rtktNlUO/ZPebF5HWZOk5TJCFMTVNmWcOTABflAsASYCjwAa1RJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2oSaL7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2oSaL7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9A6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778814033;
	bh=KYaYti2QMzRKgSPkeTo57S48NTQmYSu+QTudMwRQ6v8=;
	h=To:Subject:From:Date:From;
	b=V2oSaL7i7is1M/ScDeRv+/ceX2R2/+epauWMG4nB3hMeqbHk2h2okoxMB3XKYY0dU
	 5K5JzS2PdRvplf49o8VLnkocoKWAtxjwKLbtSgcPV64Zyqkp5SuQT8HVTwwu8mOVen
	 5iYnjktF6NQEjxviCNzK9oPxNzyWmoJFrWKbyvzzTU95MfgjHI7BvTmBSQT+6edbAe
	 GlHWq3I9oTwVWNPIIw/XbCasmQHrfXY4cGG0O3zodJG0SIUUI4s43/MhTLTb6MrCZT
	 sXfjjlYutBaukk3ZmmZ0rupU+hnFdLWJlh9pdy+ags+8GJDdiicZXODzRWOLj8hcA6
	 Pnkh1zWOR74nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B141BCD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881403369.25163.4814541676943887349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd10fb05284747d104a9f43b1bab532677d1fbc04f6a4b6c36cd42a08d1a7fc
Date: Fri, 15 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778814033
