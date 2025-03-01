Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3042B23F399
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740802134; cv=none; b=LF1jbEFO5HsUr1jfaeL8iA5VrmApEs2vSZO00cyv/Z7eT5yJvD2kABpeUXufjphbCxvDjmqOxyc4k3FPwYsve+5B/+3vjUXSy9/0K5EuFgDAfpvJTkfR0J2ubPBa2laCCL5AnvpTacdP0TTKkY/DVMHzNW2c5bWs27FIEGgkkZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740802134; c=relaxed/simple;
	bh=sjjBjbLEoXHV/+fml/WoLMZ26TE6w1x3RD/n+Gvg3oQ=;
	h=To:Subject:From:Message-Id:Date; b=QB/K1BpZix1iCQZAFtqxm13/HIZk/UPqsM2Qhap8JyKKaI64rM/d32JT62koOBd11VxL5aALelPTb/evZhULR+mymphkiCMvVc+jJssRKU4pncL6OyYhygUqKicjkp22+dErmoyq8S86V0k1BCTqY3TlgsKJqUidhNMwBr4jOGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZdAcxSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZdAcxSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A366EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740802133;
	bh=sjjBjbLEoXHV/+fml/WoLMZ26TE6w1x3RD/n+Gvg3oQ=;
	h=To:Subject:From:Date:From;
	b=UZdAcxSpr0JjheTt5nySO0ohqalAkWgl7Ny1WmhaR1Tp/Fm3n1M5z0Mjq7/WKwTcf
	 ypiQ1ZYIoeptP4rakW2K973maAe40JAK+iNpDPsJxPDzH1IcBDz9eAeF7/jS67N83q
	 TM/YghSQKQ+H5SucG2C2W7lKWzSCUYc3BfM46pUVn0tbH2ddYdjupWWu2wpveRFaai
	 8K8rwBi0QoU6P2Xpf8PacxAtPehvaxEjG6Jnf/CsqK7dzluD4e4C5X/00iWI6r2Ogs
	 3iN8TYSYx7x/cZ5GT1ALTbg3fdWEZbYOFxus08HWfUeD5Ko/HLMj0MbeFB4527y1y+
	 WkNQN/EBkkEug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E68C282CD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174080213359.9203.9977305072648977239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285cb60ec88e8d895760f419e06287bf9509f2badfb890e7ac11bc3fbd89ff69
Date: Sat, 01 Mar 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740802133
