Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AD3330B01
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786882234; cv=none; b=t2Iy5C/py5QFzKgQWAp0VxAtamFlaAPjQ3rRwAP+TAnbo3u5VosN1K/4de9f+QLC+u4toDUKNqfuQdlPaODUAz18I9FqthM31/03q0wVn9fTd25aWWIWMnenpIpubvwmoWNMPZ+wC2VDWYgZsmCsC3XL/Da2CN1t02/cJtUjXh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786882234; c=relaxed/simple;
	bh=yK6X3GtyEp4RR3AKiZA0GYk0O6E5w0t6sDd00ho0PFY=;
	h=To:Subject:From:Message-Id:Date; b=qJPJWvEZZwRMUkim+BWtdLmqDoh/w7xuxUmTdRkOmwZStL0cQMjJblesLRtWAk7bqb5M3/OOtGZCl2WMCLPBTrqR4zbHxY8uhindJWEpZThLX0aa5S5D26egjBnGLGsIkMSgkhUPUvNVFGN3un9bA3SbXRLZG+Ue/BY26xSyAMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+Y/jCXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+Y/jCXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8233C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786882233;
	bh=yK6X3GtyEp4RR3AKiZA0GYk0O6E5w0t6sDd00ho0PFY=;
	h=To:Subject:From:Date:From;
	b=F+Y/jCXBn4tZ5v3zn4Cbt5LNb4A8ev+o0JHgEuAq4GYtVx3hahnX+ZPauHD+GaPx/
	 c9HANkYZF2VWC0lNlDCa+3prtVcnhILZJYhvoQ2w1cu/1vXL47Shc+jU8ekn3GaUj6
	 xFFVEFoTxSu5ce7q64eeHf0/2G7VBbSqXd//2pdhxX1n+BE+fa4qzQqnI2QHpJVlsr
	 ehCKccg8zb8Vri/LqfFX8RDdz1jmU8N9KCzrWpell5gM1jd9ELQBQhR6cXi46V7qeU
	 zutf6FP6LPmbdPTXa8ZWfq73e15ptYsv6MpmdFtxa8fRAOjSiHqy6tDujUSyYqKTf8
	 GgZeRe5FGntUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16D5C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688223368.7617.779993356161309194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1cbe563f8841ac715c0eed620fa61a94133f5d874f848cfff3f828b43a506ce
Date: Sun, 16 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786882233
