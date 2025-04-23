Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6AA2676E6
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745440794; cv=none; b=h+iZ53yue4XcIa6cUqLtOtasjtM89KkbboIMXU4OFqpD1Oax0eH6ccjegBCN5bOa9YtkwbUqkdoxKP/kuX7oWGrEO8E/WVqc/A6l+Nv8SVS9Ni9dHvFAqZY5e4XKIRqXuU8wlPHJEmvX6xcyrYW53A9k6wPLTRRbSM7B9Pd+dqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745440794; c=relaxed/simple;
	bh=qNnceGYQ2XAz1Lq6ywBHQ30GQnXpfL2C2qDpin03q0w=;
	h=To:Subject:From:Message-Id:Date; b=D2Cs4Zx0QOLq7pnRsh7VyAe5cao6mfCvScj8WZB0v3AZ4/CsNne0aat3bq/FyrkHSN+6zvzUd5l0BAh0LMmJOaSat+27E0L9gO6tRCKY3ojhwyHToyUptt3hL6GXIrb+2Tb7cy3FQ9pQFG+MHr0tqq+emWlb6Jl6f7WgD1Q0N0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PK9GQ6SR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PK9GQ6SR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A287AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745440793;
	bh=qNnceGYQ2XAz1Lq6ywBHQ30GQnXpfL2C2qDpin03q0w=;
	h=To:Subject:From:Date:From;
	b=PK9GQ6SRxDSpeV3gANyI1og0awrr/nQmrJZkeZiBzvtFszxWVaRzPIP6wdgqM7L3n
	 1iSoT2AxDNdmgNAY6CiEPWFzlxXbI1aCripcLS+/5CnqfPZmNbWBbJPOv9T0/M5CDK
	 QotwzVHPcRTyJ3CsOCQDv0cN0BsTnKeD7mhmWzjwwAGm+NR2XKbousV5ua9pjImxsO
	 6vKFJ0DFn0YGulfsvdybajbz9zDUXQeV+7SeEwD+atxKqx60gQe+qTXsJytIdH0r4b
	 CYSD6MvYZASAcqVknu732PnbASvv+xRv6hX1V8lYPmtDiTr83WqqAlFpotndoWtHpj
	 23ApPzWeKuDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDAC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544079357.789.10370552915942782993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc3a9a373bca77fefe1c6f38872a1b70517ac19e831fdf8263e79a8a4de22dc
Date: Wed, 23 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745440793
