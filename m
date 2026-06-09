Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3D2408608
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781006734; cv=none; b=Jm1NGtCnCnqsum1TjdCrrtKJ7KZ+T4AP6qdTThySPAoZrZVy9mdMnRMVYdSlMl1TcRA+s65CVxg1pie1qxeYoWn1S9SXSXGVlaUwMGO1qHKQG4aBQji3NyeXk0+MCn6UYL6nXhaQ3nsujMdeoYdm0BS7ki9wPycqPa+BHBH2pGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781006734; c=relaxed/simple;
	bh=jQYpS7sMr2xy9h03itQW7N/qpS/6zrFIXClTJC2f/Q4=;
	h=To:Subject:From:Message-Id:Date; b=Ooi2OzlkNJ+YqGEeg58+A4NDuTboh+FyS1WX0Qcww/6zTyGLuFSytesXKl8xFkVSwais4OSvJn8B8RXRFxeBXHOn6kxHWspL56VTh/UiXZbutDptjIXGh8bd2XKdLEWQ60vGwvyPFbem2RLQiGb7Poa49h/dSnn/6oOkliJgqz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkYj0GoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkYj0GoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE608C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781006734;
	bh=jQYpS7sMr2xy9h03itQW7N/qpS/6zrFIXClTJC2f/Q4=;
	h=To:Subject:From:Date:From;
	b=jkYj0GoUuKHx7uYdFHlIrZGe6lSPj3R3dEaqkyb/KC6heQyy/Sq3+AobmhxcBoZxt
	 SSB0zmNSZ6nQ+GRSKiPiRXVw/BCMcckHG/20BiXXVRG8KWpRJfGRGyE4OXFtYeHpHV
	 sbLUsJP3ssSm9huVT3+RE/0Qkj+DaHyRBMBNyzFcyr9WB2wsKrWT1hWnVwVmbbg7AX
	 e1utlbH4GYtJEmdQ1KulbgkTaXVH5ghgbOfN8w2zGIsz3hbweyRmlHtjAc6CFuaJzG
	 UtN13O0/2u06CQht1408EULM2AIgJvnC6z1TbVCnNjnQDxpiMMqevfPbx8q/0CDWfU
	 nNRN9Bn7DmpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F17CD8C92
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100673376.9536.10844748661815744195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bc7a386157361cab73725c7704de18449c056d10e0395b5215e077de0ebcc8
Date: Tue, 09 Jun 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781006733
