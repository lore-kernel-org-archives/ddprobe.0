Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CA3199FAB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738072554; cv=none; b=SMs0Fq2UE80Go5fjkH5SZU7Ty9AAjQYGrhWzJgguwG1gjEdmtPtzMulOG75lSaZEa07Utx9HKUp+tzJuCrj4agJFUMClXgw6zWs3o0t0Hhsn7BXsbjtUJMAlZadzdOsZlID8gX0YMITBwiNCXDyXLxs/5MFgHpuCqbZcqbcXTE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738072554; c=relaxed/simple;
	bh=KibYFWl8c5h7/t/G91LQaOBbe+fdF1bmNpNTZst1JZE=;
	h=To:Subject:From:Message-Id:Date; b=nBKUllGcChtndKmxQWD3Qqb5XDAslY7BJ94FmgIotKbZeclaFqKYKixbexCOo9+M6SlyfNHsk20PG9wN0ONKlTy/RZuCybNZN/9ff6YQEP9pT7s8CBkTLgJbYVq4yUADVgLfKzIFtsSWoxOIdg24lLWbazZMkL+5JPGfi6tBv58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYiCywgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYiCywgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0497C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738072553;
	bh=KibYFWl8c5h7/t/G91LQaOBbe+fdF1bmNpNTZst1JZE=;
	h=To:Subject:From:Date:From;
	b=JYiCywgYk+U4he84dTDFTCDIO8bQkZWgOveYiVaP4oESf6FwmhmVlgtnhPANj0c38
	 eO6Cc4YJTI1fFSSwzn+l2E7eTnKEaXWUZfH+KTAVFCIrR5w0Ac/mDxbhzaeMP2Ea0B
	 x3l5U0FUN0/OPqCjuwF11vu8938oFE8xd8gGOlK+BjSoBkLtHRl9N++iGSa/pFTUhd
	 toWKvoM9nDEdCfXYmKSNQzk9JHK/Vs9gfrUKZEbiFpBSfgdu75uiqCFmB/fqKqaAeA
	 ZnvOltOZ+zBJ9iLC5xllkE8dEQJ+u4tTSKpGVy2vNkDduJCx4AtI2NV4n2tcByuVCb
	 4ScvTaIVdiNLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F8C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807255368.489.17474646316424579995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9624a7fdc334386e404bfe83a37acbc651b580c0ceff1cacba8d8329ccfb515
Date: Tue, 28 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738072553
