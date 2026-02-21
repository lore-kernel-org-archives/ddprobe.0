Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9BE311C11
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771716894; cv=none; b=X2pbPr+mOWZmNmMy5yH8ZVQVNwaFq1wY3jP83AN809KtkQEkmZQsjUXrMcllH3qW5L2XxTtzi+xP/r9JXbCDHaG2N3DGVxSs79ThY/GQ0uh4V74wMQ8FD107ksvY/BWTHq6sUT+QEYO1ZpWoEzUrlXmVpiEP80JCczWwTlG+Q/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771716894; c=relaxed/simple;
	bh=RmU6x3rdVeCe4ZskkWVhMNo/chGh+9jm0z/usb2iol8=;
	h=To:Subject:From:Message-Id:Date; b=fXig5cvbydyZiNZGxyzEqRl1J6MbOANlUdnAd0cW/f/6lgY++KSR8awohdHGQMRZECiSWXCiVSz3c8S2SulLX/D7EA//9WpG+k9M+aJ8NIhJS4HiGoKNlEBwgkB9PP2ksGGZU7S9c8+3eMY/xK+NzRXuW4nTgcVsHKbyc/Cn+gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDsGGuBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDsGGuBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16B4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771716893;
	bh=RmU6x3rdVeCe4ZskkWVhMNo/chGh+9jm0z/usb2iol8=;
	h=To:Subject:From:Date:From;
	b=eDsGGuBBeb8Trcb992Wia/Vlb5zJ6uKxtyTmMGVttF9/ZcvquTGbbmGH3PvhY2sWE
	 ow9Sl/bcMipSElFqNvUbKTs/BC85T4nI5rHEJGVm+GDweHxXUlCdcO6lxySSTN5U6p
	 HOibTFOyXlJpjS2ZVB3EvDWNMQxQxU5i09nLB9WmDuTM8czYyYxyYC8NLEVlEhTT2F
	 ZlcjQdp4cOOvzifZu7pbZaNb2fKBPW2ASzE+eVGDWs6m+/zREzxBfl0xJS6sgCuH6z
	 xZCJnmxb/qU8Ide+CzJ0H4NcZ32Kzkm9K7jPnry+FrzFOATJ+HULmbOp3zMs49Zjvx
	 kHDMNVY4zX0Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A668C624A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171689360.31381.3423682028066094533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc888c00715045b9b97e746f5933b633138380bb0dcd6ff1f258c726694ba19
Date: Sat, 21 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771716893
