Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFD0426D2B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781102134; cv=none; b=WR31tzhHm4nNehrosSfn3WaXKCsKh4ZnzRl4gCltDJg36Ba69Vf1qtrGy0N1SVebawcME7fn8DLG/hTl+BaIPNrD/EjYPYIas0Hi6sJK8BR1SGSVld4KP8eAGSC4a4jo2y+oWRhiMiGOHH/VHTt5cOHU119gKjU2HfCwIe9Dt4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781102134; c=relaxed/simple;
	bh=NZ2+0wAdQAxUa4SxHg20+lda7dXDDT7gnnv0x26DCVM=;
	h=To:Subject:From:Message-Id:Date; b=l3ebRn8Ik6Bm4QYNjCnAdFDKlIBQbKe3eOL0ueVkuC7sMjR8Ip5XAlbwrqHTZUwEa9hIZeQTIK9eRL5xckn3uZS0qqIkzD4ZW0ZrwFOFK4ioRRURl3qI/6qOAwNBW4w00s35BG9/BYxY+rg0OGN571RKBzj5xoQy8DKQd8nu/Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvcFxMKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvcFxMKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4454C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781102133;
	bh=NZ2+0wAdQAxUa4SxHg20+lda7dXDDT7gnnv0x26DCVM=;
	h=To:Subject:From:Date:From;
	b=RvcFxMKj6E5O9Xnl+xcGCB4TPg+4BuUjOIN+WK8g7K3YfQy+cOCgAKwDJ8ZiiQtFL
	 KBdtNiGtRaxi8jatu2j+l4R0gl8c+PZ7F9TgQGO0Tumqex3Ojf62VIRppC5sRT0ecH
	 JaAGUCtP6BORdEH/LSLDYa1EHHo8Dl0286WOUyIexLzB3i6J1fZ9z85IpqBAo5xPGY
	 0/zC3vZMXPF6UeBVZEKLoS0OcaXzWzYSsXRvWxYluJkvQpERhaTr0k5twW4rItBWBs
	 8LKEAe8W7u8HqOTKJwaYlNo6ezkpl7BGtjc23n7QzMlH8iI0eGza/mFmIJnE4S+X8k
	 yaof3rNxXltcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5411CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110213373.30796.16052183664136224986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87ca02725ab067bf34658cedd06e91339eeee851f72dd1b68ed8cf8234b5c02
Date: Wed, 10 Jun 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781102133
