Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF49208CA
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735971954; cv=none; b=DQk1WneKLDUS57GcV7iiknQNNNRStOeQxZS1vmdzYzoBDR36gILvTYrFnOcILniOOANdRBhc2OScW5YlT8K8P7QNtFIOyoJry+t7zsxm70WW6elI4lcTt8GVt7JS9tXRmP2Qy8XdmI06KdhKBDe3TxOddPrIh62hRfDcQq6QmdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735971954; c=relaxed/simple;
	bh=jOl7r2PHAAIxO9z9Eii0RZIGCeAVjlX4Rf1I/8QzIKM=;
	h=To:Subject:From:Message-Id:Date; b=G1KEJ1NltFQ+rck5kZ6rNbPCWkXLN55mP9ytG1dXgUJVnBi/aQU965kwTVrlR1KDsngzo+Phgp04JQIw2eTyeneS/yB9gYdfck4Rw8oA++h4CZEwzNKpuU0fl3XNPZ1U66yvhCfJdlNDo8Und7kpVNrg7KX5EqGU4yiqbzJ5Uxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDO4P2LA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDO4P2LA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B574CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735971953;
	bh=jOl7r2PHAAIxO9z9Eii0RZIGCeAVjlX4Rf1I/8QzIKM=;
	h=To:Subject:From:Date:From;
	b=QDO4P2LACatVw8KrwC3BwUlH5BR6m9AMhN4g2k69ZK5PAhK3woK8exN8ozAY7gtma
	 T+Hzwkq+znYtE/Mnhz91NtWuPwsFjtHOEYSL8nswA8l3xGoh49qAl636p0j9KmvTUa
	 5SpbPQvQ96rGyrRwPU/3Zk8mTSRlL60wzDJt3/jWneJqnib35qwM2x99UvYIw53U2h
	 wgrw7jnxXEu2TMgrEOnGuP1yr4Ub8xR3dkRVS5t23fcGUunRQp05x9gNbXOJF5TMfe
	 5E/Ky6BwkblApqoHpDeNvXY51HONP70bt4/OJjm1MgL2eiUwW4INyRCKQLb/kzA8fL
	 FmnoQ7TzhgNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD2DE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597195360.32412.17586781370462214827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cd798d56f5c044ed0baedc886af5150a60e14e241cf631bf1da20ef74e714f
Date: Sat, 04 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735971953
