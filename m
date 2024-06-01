Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE21AD31
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717215263; cv=none; b=LQPQHzMpoGAL3KyuHi3ZrN58liZJPpnEoXLclIa459krtWIr4kCKkJ9qN7YpzEqVx3BLclb62bAi5M56aSqi4f9pnbieXetQ8DWLGzVmwtlSCtMwSCBo3VSlQVrf5/mV/WG/LkPTWsHH/CYSrf6SdwvpC25Y5P0qcKAKdXXtj/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717215263; c=relaxed/simple;
	bh=aKQyfN3hinpqx3OUcn1LfMPG5JqN2t0wy/eH/JXgRNs=;
	h=To:Subject:From:Message-Id:Date; b=C/PXpiypUjcEUlktDrMEpEoggAM6uqmV8rHwnxmeIYpabLrqlzfCLq031QYlC6Zdag202QjzkMD+D3FKQIe0Xrlh071ZjZ6TVXeup5T0476Ok4xFrAFZzwx4PMSgGkU14ahhS/+P06LIoVoBOLHkCgRvJhfXi7EngaFWyHd42eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2Lf9GKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2Lf9GKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A96C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717215262;
	bh=aKQyfN3hinpqx3OUcn1LfMPG5JqN2t0wy/eH/JXgRNs=;
	h=To:Subject:From:Date:From;
	b=k2Lf9GKshx1VI9Mstr2/bwUqnQSnt4RkdOCYZOyAzLuKCG1lkXOJR/edDl+h1IMTn
	 qgrrsIEoUH/+zFwMZjFG9r+LHUG+ZM/NG3NN5Ec5HCrhx/GStcnyWpkWyBwdvYAPbK
	 2V13T4H0BtqJyQlxE2rVcj/pihoNuPGaRzCIIyll2A480NFYddCw4jWNvcjImwArZn
	 Axrv1PJNog7DnNzqmAaJ9DH6kwc3Xrmxm5d1pIz7Ir8UgJ6KnJeoxeCkJ67gTL4o0q
	 5Aw2U4WeQCBZVB1ecAIosCIpqEhV01UR0znhMVK7kjbyMX9iz8vFS2E406XAHBbugq
	 lCQawu704I/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AA8C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721526278.14863.2694601489279415850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72499991689082691c6b52258703169a2c7300110e7d4b122ea533003a8ec17
Date: Sat, 01 Jun 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717215262
