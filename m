Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344B42DCBED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748766594; cv=none; b=c3iSv9Ni+cOJuX7zUYVY/v3Wkr7UpuZFXXZNu+F/YuvlaSM58kQvt7xd3wjpMYuHYWUEpYyIzcATGJW/CQ11L0xA7nlW2SdLrgoGEL1fQjoOX+5NKsOpEopyrGHKyMjfx9GVbTzgDk+PTSWfNOKCjctQom6eZRJ0sE+H23PRpZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748766594; c=relaxed/simple;
	bh=I1OuYaoZm1sQrNcqWAh72+551VmyoXR2Er2Vvn2WEng=;
	h=To:Subject:From:Message-Id:Date; b=XdeXbYL9MuT0w2VjRTcFIrvRia0R1JBf8aeOorMgsbMeIh6euRKFGGGlm8fkm3SStDykgb/dBZBkq99JmEYctP4XsUNS3m/5wKfeIAkrBgdop0RCQGx7ZZeHfoilVzSR88iXOPfNdAvlzep535xJz1A4/OmMaweg7OjuUSZXhYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvLZohbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvLZohbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A439FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748766593;
	bh=I1OuYaoZm1sQrNcqWAh72+551VmyoXR2Er2Vvn2WEng=;
	h=To:Subject:From:Date:From;
	b=hvLZohbXEvHvnAtMTXtQQxlil92P5IP4L1+aJjYtc9dP8eMI8gdx0HM14eJJW2UTB
	 j+kffOp8CS/mgWOgqe0HEgLfQodOLEHw5HlmCdYpU6a1J0paMwGs4jVaWsQKS855Il
	 AaY7D0Sdt6C+9Y4OILZuFjP7l0e5OIESmNHL/HWB5W5TNu2k2X8Zu1PQXr6vU5YDhb
	 PI+4XHud4uBRIOW7FgQPN5ahsoTM/OMDlKZpNte7ciGZE2cdumHlIiNThrXQ2hV964
	 UIciHrIfnx1e8Ir9kp6GwyxilDFYrqJCADncZlLMmpJRJ4384k1JdCpz0PwiuVuQC0
	 QdBF3mZWJ3wpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9374EC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876659357.15909.16519617299057925837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0a66a923019e59fb62256c027d6ef2b4b2ca17ebf9d358f261355a4960b937
Date: Sun, 01 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748766593
