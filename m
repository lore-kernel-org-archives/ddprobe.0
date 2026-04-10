Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAD134250D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775814454; cv=none; b=shmZUDCLOZAkIPgXLGRf/S3KPSaSCH4qcWN1uze5V48ahBPFiS0BJJUrAfK/+v6KjcYmxXP5eolgU58n2ft4ci81MJV+OXYnAgX/0rSyzSbGK1kMoBspkjGVtQnDJvhqYL+8O+P+JuLkJM1hV35APNk47DlJi0pWe1N7fhI+vOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775814454; c=relaxed/simple;
	bh=oJS+Z05F+4qqe9UihVM1OmizLJxZA4ib5JYYe40p6Yk=;
	h=To:Subject:From:Message-Id:Date; b=HHlPT3nWR82WYpIJbDLWlrKmp/VSbEQauR6DItEgQZNCnvBc/wRlCjbxUzYVbyi3oacyl/S3MsTmIdBmuQKLXlD/sxuMy86W2gQwym43mBbINMWKUdLEYTXPfK3EXf/33jvQZQ3urRAiYHLDE6SwC6AjcTtsTeWww0GYE1L1bm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpP1Kf+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpP1Kf+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD294C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775814453;
	bh=oJS+Z05F+4qqe9UihVM1OmizLJxZA4ib5JYYe40p6Yk=;
	h=To:Subject:From:Date:From;
	b=KpP1Kf+YymaJsZXepHmojqwg754TSd8Y1Z774fQTzV4zcbG5u+3Q0frRl+0bkdlZb
	 0iqY03I3R79nI7qry3m1n0PvX4efPWcNAzWARgEnVbp0XVQ052z46d2j6LGKxXFDBX
	 hRpF1HMnvwuwJqEucotDbT3lJ8e6gjWQrdm4MbNafSAXjDKdsuvJhA8IszU4EV9ojC
	 9XOOjRPBOkqqY5U8OISHVc8IsiB+++xtue75+OblYgoqjfnFbZnfyDOIyLtKBijgYe
	 pMFArwNCnZebflft5uq/9gB+rzBVTLIPjBhOnCYLvRLkdQCocLB/k/e/SORl0gpjpB
	 U4ZVLaPmrO5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE2EE99066
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581445369.25243.12277907472215278755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d7ed28d9089958555962cd5d1f9e40f049bdaf3f7afd94612c836b8cee2d8e
Date: Fri, 10 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775814453
