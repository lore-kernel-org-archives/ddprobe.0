Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F492242D95
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784434; cv=none; b=Mo0DUbJOGChtiLlWRGlTGRMesvB6KNbgGlUkbtlEy1qqYYc7qfD3q0aua929Zv+cDG1RowO/fl52OZUhBvqoNF3lT/Zbj3z+tXnRKwBqoi+luLGAc0rY6d+yOn/2wfEmplCoaNTVm4kuOzSPb1BtZuDe1n0+YBPLW4Z1GSgSMW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784434; c=relaxed/simple;
	bh=bkCsSVHdIkKAcVR9voLk4d8rO0R1NLRsf3Qov1ze2GM=;
	h=To:Subject:From:Message-Id:Date; b=Ckivpe1BP8z1iopfY5i17j6jQ0j+pbx1jmWiA54zMFsv+gFtNrhrr3Pgu8hZ785i1EAW8cG2mna2MWsAbwR6kZWiIiXKRGDpq7Fisvm0pbmNoMr4n87bA32MD10Vu0aBWipeXhUvlq4vumiZ6D9z7kXGRCQdchzmb0/GUGOGQaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpEUPTDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpEUPTDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0999C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767784433;
	bh=bkCsSVHdIkKAcVR9voLk4d8rO0R1NLRsf3Qov1ze2GM=;
	h=To:Subject:From:Date:From;
	b=fpEUPTDSC3HgCe4GQEwWrGjAK9IQmOHC9gJKwLeiEshZiYmXKlpRbL/2ylxjhyOEw
	 6s61DMuWJtB8TICLxZmuqNoDRVILXS8iZg+x0u9l2lQpJ2MXcCOdY3l2RmOwaKqMxR
	 iIY3GjIB3L/2GFHI9W5J3E0UBLd4VPqCg9Ye887YDrTUzvAmnrvawx0fLhayZGVJlK
	 GJV/KCk0sclvCKsSFHbKkiRbiqHgapu6BfqjNdma3wS7DsYB2B5CtU7dYS9xFFXouq
	 6VDrJF5NqW+yU50R5S9gujh8ngV4ZflkU+i59lyaJPxn49CP4MwxjC69PIz2Wfqwkl
	 zR8oRWy0OqSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4ACD5854
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778443357.546.14212573967278249996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adf142dd667d3175cb660ceade0625337e668858c175cb7c94ae91f8d5eb1f5
Date: Wed, 07 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767784433
