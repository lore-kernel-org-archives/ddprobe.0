Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817B635
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748563794; cv=none; b=OLhDNjZewoyd+tPde3pEKLMrLz8pLnUYrPWBv55ir3eas8l1XfkpN/RWCYuiowEXb8Wuo1rwFPaf+suPh0FxgiPreJWVqJtwkuq/8fwWSeE98jm+bjKcDeZ8wBmvX24qLxMd+7AQILLtu2sBmtIrsOHLb2f6ReYE78SGbG2xv2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748563794; c=relaxed/simple;
	bh=2KsupejsDoGXQruuY/HcyFVs/S7hqCf12QmnNdhsDoY=;
	h=To:Subject:From:Message-Id:Date; b=GE+ee8yAhF8DAGnz/BD0PGsCj1HpD+6pwaIpLeGYieetp9OxNKrc2pD7YGjxVjPIUyRzEpxXM96j9XKaogttdP4lC9nPHyhCMQx5Z0oI3qzZVlHR3cuWll//8pDqg6Z2hksWjwpwLCWPuBGpkUWf8icPLMsgenZ+uBFDaaPCcDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jrsvy38p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jrsvy38p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AEAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748563793;
	bh=2KsupejsDoGXQruuY/HcyFVs/S7hqCf12QmnNdhsDoY=;
	h=To:Subject:From:Date:From;
	b=Jrsvy38pQmzeftoj9b5fHcTf98QkTXdCPZjP0bUPAUVb3F8Gu4HEU/RDA8tSyDIZo
	 sEx5pNEHmUQvHJq6XqeZcqodRBd1zp1DMG70dpTIKVXzPway7Nb0h01GhfTWIkIscz
	 aUJYStnZ/ZBFU3QCZMK9l1xoEcBkUNoUWH9Lx1ZRGUiNfMsqpOS7vw2aasmvJRZF7E
	 3GyUw9TfJyhpfeAJ24LOIKOJppC4NxpaZhMbaYM+6jgVGEFgCEDYRs+H0Eh1e6n7Uq
	 hZGP+sh7ARFngrMMQmhmYWiy6sndV1DgWNEUzNvG9gaOl4g1l/cYN1ac6IwVHlO87x
	 O8b706fhmxNIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90754C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856379358.19210.18316146210768398345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9ff75eff42646e2262f29dae46d51087418de026717734c6351c8498841e6b
Date: Fri, 30 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748563793
