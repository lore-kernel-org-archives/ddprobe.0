Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1701FDA8C
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744925994; cv=none; b=U9KRUlbhPsP3B5eMN7sHuGMu5zMD3OHTJ2ueI5NfcJ46uiSMDOrErfItsL8noDsOJ0NX65b4RJ9AG5X9cc/uh/HU3dMtzf6045dUaR9+BDKx/gwanII1zVzwrFYDzoSbeMU+foyTZ2nGDn3Yfg4Ur32fQGIz6LUrvY6hjc7OrIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744925994; c=relaxed/simple;
	bh=IS7t2lZuW1r2In4QsdpMpYK+Dvk62mwJeqgfbPaj/K0=;
	h=To:Subject:From:Message-Id:Date; b=brnf45/DPh3wM9U+yG9XkVD97HOGfsiv62SLrSVpmdLht21DMfBY1rUqjCrg/U8jlB1xzBTJ4UC5qWaQGGdq0F2t8YK6gTCG/rqMDX3Iku6wIi+XH8FhrdTkHFho/U/+VRhmLevX9CKzxKtt0LZ/LtlyUypSnjR3sFwZn53ojVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuFuRlzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuFuRlzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744925993;
	bh=IS7t2lZuW1r2In4QsdpMpYK+Dvk62mwJeqgfbPaj/K0=;
	h=To:Subject:From:Date:From;
	b=iuFuRlzTfnX01s0X9IOW7hWRYMTDvnSPhPASCA834QCqYoaFL9cNS3R3Njco6GKtB
	 sphNqKk0ZydHnUfJXsIbAGns98E0qC43LE2ibMIRbK8nxNpaBuNdAZl3c1HWWpSK3m
	 CTsStIS3+UCirrgbSu6wwnc8pNK+oJiczMhmQJ7hvxXj/Pg3JkFwj+OHuBDcS/J1Cs
	 SmhbL5QIr0lGO4yCNfTlnt9/LoHozpD/pC82L39jQxCx1XZyN9qcRKG/3KaWPls9LR
	 XHT+wwKczRCKq52o/T2cbKEQgIoolrYnLPQOjo4zTw2RlzfgBRE9vc9Q9LT0cyDduf
	 hE1bPtDxjZ1Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3FC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492599358.28475.940835736596047932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a5f61f6d92c4ba21ad3bc265646aeec81445e906bf26a66112e941afd84e5c
Date: Thu, 17 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744925993
