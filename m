Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0295D1D435F
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771820094; cv=none; b=Pf1ArOe059cpqlJ2Q9q7eEgAuDFRPWvHKrRxTPG8hBmX2j1kE91/Vx5qgAyVu6DrdzrLM3vohfIoQWJgdO7hKgJi4/Co/wG9HW3osRNEfHBs4ERDQCMvHc48bpJoPBg0ZQvTwbzslBjJZ4ZMyC+1Te3idsKWfET6cHNNTHF4e7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771820094; c=relaxed/simple;
	bh=K4X9+1RO7tWn+vLIGNVTlXmoZtTuCub7Y7P32/SuCTQ=;
	h=To:Subject:From:Message-Id:Date; b=a9CIVYMpA+C2aCJkmc1URVOjY64LFH1dV1QMKQBuvdutRQxoHFKySp1TBTfbZUUBoIH8kaY8xFMUEHeMoJqHrLAZMKqKZ62XMpgrFJQyKgREg0MHpP3wTM5OLW81xOBXLJ/KoDZYGTPpTLUGTxKvu1RH9/4i9rO3bv8OL3A5oSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saWho2ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saWho2ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC8FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771820093;
	bh=K4X9+1RO7tWn+vLIGNVTlXmoZtTuCub7Y7P32/SuCTQ=;
	h=To:Subject:From:Date:From;
	b=saWho2uxaLvsP/TZXOZnXkwPDWvzWxwf/LCEi/hRAmeOjFaNZulBGl/r1FLhUt7sf
	 F8l5xzhWs+sLsTGSvF1hkgrY36rFP6ICBs98z258wZkA8ksioDUOV4m8x5nH+oOcBx
	 3dCPIXpPcgwxhVwuWjNlBklm6zDoaXEu2sQTdVKWaCBm2aRSpL4L8YrUAOSGuWPMoy
	 Nbn6ANk5Nb6hgRvnz1BHJ0mjf58XMwt897T8ZMJjCqa1c4Z5AXax1KMNEWlfLvtrJi
	 KWMWVucen0bTBtjKtAATeNRc5DRIK667ASEU/BKCubUn57IGj0uvDfHLXBfj6cM3e0
	 zAebLdYhNBfMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE5C624D6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182009358.16126.9007406717642938909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dffbf6a56be039b5fba475989aa5d4501195c8a146534998911ec7ced8ffc52
Date: Mon, 23 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771820093
