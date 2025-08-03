Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5B91DC985
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754252394; cv=none; b=M8c3x7SI3DlDdB+zNigFnrh5oQjODJJjjyysqPRp1QRnWb885XLfrVMTxZpIlXgZtnu6Ezy3z1PFQI+lBrrsJzHZPlwblg+xM/8TmQ3PKjwuq1NNaTmWzk9qIM+5fJ4R4i9IA4SvkMopExeLXNDzEazc6YKmH3+NZ88jnE1abPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754252394; c=relaxed/simple;
	bh=vFFCoUZSKEnjAWjK+Wd4grGXtmcyZYy+Ayu8r29B2BM=;
	h=To:Subject:From:Message-Id:Date; b=jHYxDoedfMc47nMis3QxIeZsTO+QDxZVaG1aehW9RFTHopYxZNhDGc7+iG1Z7xc+t03vk6M0FLs2uuCFDuRLKtJvp9vqXD494VTG17mc4k8CT+fBat2k/rcmp1WsW/Kn+62DRa5kZPcCwgCGqJHo9A7KwwP/PkYshPQBY6YIkDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk4z6bic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk4z6bic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754252393;
	bh=vFFCoUZSKEnjAWjK+Wd4grGXtmcyZYy+Ayu8r29B2BM=;
	h=To:Subject:From:Date:From;
	b=qk4z6bicTD3JpZA7ruZc2pJEwPmqUotXWLbFQnG2+a0poe4DZr52GTRR0rEPjryUK
	 FpqdAjtQqzwQUh58wYUDjv5Mmsh/3Z/gOlIH/x9E2/NytHUtmkIp9Va4Pv979ct0lS
	 Fhs2H/Z5oVRH31jhQQS/ON6AY4fSM+ovC30mnAq2D44WkBgRV1GIQEBRTYiF+5UEk3
	 AIK81oJsB4FDV3EA/7hYul6Zdzpx1sCjoLzgPZXcwgwlvGuy91tOMjVIOLX7m8tTw0
	 XxwZFoBi6JGYlQcOUrmUR+xw93lLB9L80ip0J9qdAk5ISm8cBBEDxvowt6ktrpK/Va
	 nBcqT3JWyNt6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9534DC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425239357.23060.437101313993417994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf529b55d4680d0cf30c35e84b8e285b5e47395ca3d88d3b863249164350508
Date: Sun, 03 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754252393
