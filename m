Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFD62E0901
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781102734; cv=none; b=eJcnYJNGbW38d7nWGXl5lYYlJyH8Yvks6bQOOvT1S3Dz4g/a7I3KmWk67p/fOLMFTF3hj3hZqaC6Sw9MNuMusltgJmt5LAn7hBXg1zwVyW6qszyV+wV/BPl0f0mQV95A0+CPoMeS/GguDekddjEr1UPKqajF+LXzSjVQWlpdteY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781102734; c=relaxed/simple;
	bh=OwdVC1w2MBzVn8GA/KA2SgwAFlJyXTtQRydPSVNRpK4=;
	h=To:Subject:From:Message-Id:Date; b=pX+yIpPGF/M3DtLFWBLbFhhkQn7u1am1v9TfgLW7vSGGCRdMR14FGsVBylxFVudhQ6/Be343N4AjIzSOS3KsWrZjvFudBgQboJR5yhfEndIbhKLGu6SCLL/q0rvsljm9HR3P73+cFsczCE8N+5GLLghDlcl4Vzr9wd+5cojclGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqtyzs4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqtyzs4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AE3C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781102733;
	bh=OwdVC1w2MBzVn8GA/KA2SgwAFlJyXTtQRydPSVNRpK4=;
	h=To:Subject:From:Date:From;
	b=oqtyzs4sWmbds2v2sPR4gvuCNM7b8yXsBf6qokS4gl4KGAtMrjOVimPim8lgVJSUz
	 /OFEt40heF8pL/2xRgoCHoAUJkktCPYqJrIGKC65Ulz5gKzfGN8/dlSps47ZMOurdp
	 WUF3U+os8HTeQg6FmwPC6L1nqg3mHx+o106J75eV1XSK1Zr90gWxlyvkoxeV6c32Rv
	 qcJf8YjDPg2PNKbLD4fgdVQ8r8fDuhhdr+iYyUPISH2IMQxgFXLy0x3pAyX21ixQQV
	 GKwCjAtqEA1Fig4RXTwnSTCN3VjCLEWVEfnzPYvlPYh7fOQicfKh56KJMWXLij42HA
	 A4Dl9ToQp47CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFB5CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110273370.13199.16901785885315922917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54328198923a9796e3c9981666ea0de4e04326372f75041b4871aea820cb874a
Date: Wed, 10 Jun 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781102733
