Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4019D20127B
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744264794; cv=none; b=MTQu3vV0V0cm7YayWCdklZsuSRfKKJ472b49pzsdnTwuhEkup2PAjzaIgxdmnUtq7UyRx/B2B/sr0qdl3aszNs4vF/CZSXOMad9sM0MR8sZ+TWiszodxhbcPDqPhD8fqD2OuubW6vv/KN1Xo4jhYJidptiTPAf3stM+g6VFwzxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744264794; c=relaxed/simple;
	bh=1RFYH+vQK3rEJKYuBiZi/BSkZhy6/lOMq+hJzdpKnP0=;
	h=To:Subject:From:Message-Id:Date; b=KcuMHRCb3p5ZjZv2uca1rg4Qp7DoCkwAGiZExAcEubetdaIPnrn/dACdsjYbU1tVhPPKtTEhRNrXKFSib/y1fCN9ORLxHJW1dJQ1L4DmKrkmrUFnvrFCeSUYJUW9p3vg881Tl4RmdNitKovmL2wCYx5kn/VV1b/RiKFl3KlAd8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jm+QVPvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jm+QVPvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F724C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744264793;
	bh=1RFYH+vQK3rEJKYuBiZi/BSkZhy6/lOMq+hJzdpKnP0=;
	h=To:Subject:From:Date:From;
	b=Jm+QVPvzh3/cPmcrYm19ULgYM0OS1v5SqRLz0EFI7e54Q22HZDCG1pElThAP9qBPv
	 lhewShoHZpP+y2EOd27mhp/Hq3LvqBXKW4htZcDVIt13UgysUW9srrL0ryoTuSDDw2
	 D/pmOodo4PuJUVaFy49wnP2cnMCEXgu82sfAi1OI/Oxp8j1IIfoAqLFRblEdvOZaJZ
	 DaSnOpIJAskQPFbD39zGEJgc/Kh/V7kgK8LWrBIkB4nc7USnrpvQG21TQb+eVwNy/K
	 US17zBroIyqIQFFm4xHPilpokk6qkZoEpoe5YTnQFHDXy6cX20YNoSj7eZu2/OclNy
	 0ZSyyr5x8j4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBCC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426479357.16287.15315519434260765684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df9279151c499c4908d74d433369d110df7bfd4556ce62415ca70ce4f3820d4
Date: Thu, 10 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744264793
