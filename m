Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EFF2040AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752935994; cv=none; b=DeXMkxuoJcNfJ2tjrvLwS/YA8+6deFF1zhDcPb1IhqsDPqu9h+wt4vK3HmAERBamAgcfR8ZZTnSgMxbQ/ona2dcwYJ8DDJ6yQLXLb3SRcUIsdLXGrzFLwoVErpbE3+Vpor+bxOp62geIxkjrwCItgnsOYf35dHtLO2fMxNpQMC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752935994; c=relaxed/simple;
	bh=a+cSVq3f5TGggMFIQzx3HXfmxo6iI9gYqa+aLugXM8w=;
	h=To:Subject:From:Message-Id:Date; b=EYw2TqFr7ndLWRV4c2Tj8NUX+Twfp9Q7oxUXSMXYXBuuK0eo0Uz1Fm7RQYXplSt5281Jdo/R0eqlcpngq5AWOYes/y3lT0bqTXS4EA39inBU1k8ZljA5VhfAhV0ZtW6gPYm1+uEx07j/7XIU5lJE22Gu6IwAn20xBNZN32bCBuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umj4E59G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umj4E59G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAAEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752935993;
	bh=a+cSVq3f5TGggMFIQzx3HXfmxo6iI9gYqa+aLugXM8w=;
	h=To:Subject:From:Date:From;
	b=Umj4E59GwJFICcLcVG84Q5Nfg5YpiEVXFpNwgEIC/aHa+64Tn9gYpLN3oqaCquQce
	 Np5mALY3id6y+SDxq8ChZ29bTeQHTBe4R/NagZOntxk1mwqGjIPJlgREpWa4WHI1//
	 b32XZGzl3a927E+acPM0XPzmAi7itzj6rchvaZwTpseOjbxuMgFvhxX+EpCc4575vr
	 yY43AHNHCNnpNEbDU4seFmD9AGod3XcHjrAKSSgNW/rQxu7x03gBm3ukrIF/qif6KA
	 qj9bKS2n7Sqh5Vn9FEsn9jaSBl0EoI/i3n3NlnLoljatTIJsMTQc9AKMkEJx4u6t0w
	 SCzPTAYtq091Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E653C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293599357.9001.9761470725079605242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df2e69f7de8b9015c7b358e22bdb17987e12ef2cd3c70c657ffcba9ebb5e35a
Date: Sat, 19 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752935993
