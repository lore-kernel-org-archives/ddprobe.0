Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C60387B10
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765982634; cv=none; b=Lz5ehgpp+cQL/avO72iscDh/SFQHGr4uJkpW4nJzcE1jR8uw0KEnodef1AzuzcMgEbQktHEl6SancL6WngscrwxffC7QDC3vRLnlnWpSt+aUu1dMCwbRINwCAJ9caKrVWVNfjB/ix8aL7Xfh4uqsbEhCgTIqvwaeU3X3uJoq9e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765982634; c=relaxed/simple;
	bh=SQ7JmvTzgJ/B3E8wvPf7C8jksPsnB4GsZOIBj1P/cFg=;
	h=To:Subject:From:Message-Id:Date; b=CNrTf5S2HKC/jwXokpY8TWYJxjRIxxA20Wj0z15jOlsVucZGrctrQoXjTGQgGDiPHO810FEon7iEvxovKsqf6Q3EhYHyIlIa06ox7DmqA/ik2AZjq0F5QdiU24WMrTinGwO1rlhwJnoG82XjRYN1SVUEDkN9V3MDYByH8hQzQ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJs9hXa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJs9hXa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A58C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765982633;
	bh=SQ7JmvTzgJ/B3E8wvPf7C8jksPsnB4GsZOIBj1P/cFg=;
	h=To:Subject:From:Date:From;
	b=tJs9hXa1wgxRfT8l2nISclnidipDgXOe5ueINX633Wu+/ZX7FsJCOUHg8B6w335Vv
	 M2wwBWXD6Rp4WfusXqiTyvlz0seveZhTmyzwm96EZazsSREfwDmAKTj/SQSIrTi1tn
	 HcpZF7Xnc6RFXYK53I6TQQ48uEdUMuNZU2k5oT6x+xmnVVdK4z8mbJRUHdYl3VmTdQ
	 S1Wg1kd40ohhYTAmqzw0DuQmUxk4DX+yajA7FHwBnoN7hMOYXIugWy7Dc7lVmM75cp
	 E2+3+208x/8MvJ5JiCIww1p6xw8UUBvHyM4STiu2MDyr0gDxuN4IiML8llizV5MmAD
	 5SgIBddKwtVUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF28D65C58
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598263363.16289.2080038919384730395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a076867c365bb79030f0f29429edf9d7e055b1b10cd18051dae04628ed27cd
Date: Wed, 17 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765982633
