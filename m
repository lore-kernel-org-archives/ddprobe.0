Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAA125DAF7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746459594; cv=none; b=p7cMlNwdh+qon7qHiOpRG33fEsjJlkV3cMVE3WsLLo7jwpuZcPuQmmh8bmSsU2zlavHSNPnkKVELur24LPcCOHbNhwu8IrwiVRf1DlzA/HfWfaBLt7FcvyFHdlvQuCNS040W4da8rR9E5GEolUJwNmazLEoX2uJAgdp7khnr6pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746459594; c=relaxed/simple;
	bh=fORRXej44thaFpn9EMjI1IBUhdNACh/rVqhQDCcmM4c=;
	h=To:Subject:From:Message-Id:Date; b=gZfu6tSnQOTLeDIFd+fM0r6qsYOAEYjYa+AZheGl3ZQG+2CPcwiyZr6DyoULKNY3slkhB09yRiCWR5Ri8EldtsCaG14kDui+A1C9etRZzh2sGEdyVTyP8+sfX8HibAKHR4ljBPABkDIzLK5SDfv6D1WLRsQUVhSQWhPry7n1yOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYtVW/IM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYtVW/IM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0578C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746459593;
	bh=fORRXej44thaFpn9EMjI1IBUhdNACh/rVqhQDCcmM4c=;
	h=To:Subject:From:Date:From;
	b=oYtVW/IMXEKWUfVa7OzyWdxJM+9JvZtKiAkmWvoQIF9r+jx7e0Mo+gC7Itg1G0tgD
	 70lz2yxN/RUkRxK2P05Y3EAcqbfzLUituI0jDzO2eKp1RuaXJ7hjFxP1j/16dNrGhy
	 tC+TmBcTm6R6n94K5jz8ydVOlQtPlQAzLrR19NLT9DRYPKfaWim6NmhYZvaBfp3wpZ
	 tIwqo20vXm32kmFRPT7+HJlafO7ZBkhVtQ6T7yWHzO/ndz+Vv2OVwHLZDN/HH3IX22
	 A6lvLIN6wRiZ8wi6Am2AeQO5pm8qcfL67c5zVYOAaj3kM80x8lCkEK8fy1LiOl9EPy
	 m7UFXy6C+Z7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADFC3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645959358.20842.7703923670198552718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babf6eb58f0f58eab401397e7d26b2d34e7318809c197319e269d24ea9bf3d58
Date: Mon, 05 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746459593
