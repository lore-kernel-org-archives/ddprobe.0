Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC501B393C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749917394; cv=none; b=BAYxnlVe7E/5HOW3u2RDN5fYJBr72bQXELjJib3p0ceDOURdwnYAO4pLFhFDxCOhiJE8hQo5/4AdrhSNMcFz+J0DXslaM4c4m0lmZEdjPCkfPt/2I7elNvAPR8ZKIcMUgKu02X67yNNXX+8bwk1UT7C1d0WDkYN9ctJxshxYmE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749917394; c=relaxed/simple;
	bh=d+RtS9XkJGXnIl6O8vPsJ6KbNa7p6X8RO50X0qL7FVk=;
	h=To:Subject:From:Message-Id:Date; b=oPf5MpEHPkt6Mo/cpvJzP4685lev45xJLUuXDowcdnatIK+ZxAdrlztelmg7n02EbL1iHbvOrpCJ07gJMPegfWoYygqp07DBYyvFG1TMJMjSKiFUiB9quiAwOXUrP8jsgwyfq8SoZd0qbTTlzleMWsVuAK4XRQSMXBkOK0+WcEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jItuY7co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jItuY7co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27F9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749917393;
	bh=d+RtS9XkJGXnIl6O8vPsJ6KbNa7p6X8RO50X0qL7FVk=;
	h=To:Subject:From:Date:From;
	b=jItuY7cowYnnSReThf5VfM2MCnpVh56aQZT1sXHrDI3RZnmvno42suz8PYrksC9LW
	 9mkW+uYcfHYt6UKasdk8/Bmt1XPKj8hrABJjHUQ4px3jUqlBSd3c4nO3uhp6/YWV3m
	 g6lvL0Zs0KSLg5maYoQj9nKtSqOKPCoC9HvtUBbAr5KNKVd827DKRck/McCYtrl1oM
	 CUhTy53JbcsCHNxL1LO6UHDfjkohRhUdUv8GtYZhpPiLLHIE63REKNNR3ajIEFPot0
	 6za4xaRuqm3cIJHsJe83y1oC1ZVMhWZ1BNu/y85fCEMNpaGsxi1uWEh/uyYWCR+ZDl
	 5njTJgfJuZ16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E477C71150
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991739360.637.3679363192169758083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ce404e7c05db188dded01bcf78c710deabec1af4e493fbb8762616037b5767
Date: Sat, 14 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749917393
