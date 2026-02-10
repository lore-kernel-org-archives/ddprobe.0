Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44402DECC5
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770751433; cv=none; b=eOFTjgaBPVN0x4MJG5G9hbuG6LfeWOu4o+JrjqshYiaF6lEbUFEG4h+NolQEu/Tro2YGEWqpRMBuwWSyaQT+iQF2Ymodt99T9G0sLp69njIeLb2aFB/f5qN5WmssxlpWwHxeq0zKH/LcQ7yNLata1fLqwB6qOzj3qcTNYir+VyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770751433; c=relaxed/simple;
	bh=y4LnT1eC5+fKpx5skXLElY2MmO5dm3fkAdAtAXcHMh0=;
	h=To:Subject:From:Message-Id:Date; b=cqLWnzTxWqFPKrthYjZm3JQnNEczKhDLGGF4qsDRnPUgo1/NpxYtu/5xJZwjdzydqQM2SUltKbf51lFFtea20j7Ge7LHR10ub/tZj9BGKBCHZyWh35Yhbn5s4f5zRG2tAl3DY6XK+m++RSvChGpsG9Wt9yFrzDd5bFyA67VZjNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGMwKgXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGMwKgXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C65C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770751433;
	bh=y4LnT1eC5+fKpx5skXLElY2MmO5dm3fkAdAtAXcHMh0=;
	h=To:Subject:From:Date:From;
	b=GGMwKgXFZUnTElr/cpXC5gWyiOnRbaQQEtnW3L+syfxhCD+JgtOdr5h4IC/Z4QOkP
	 NpyBXlc/mw6IilS8gC8XdI2vBvFk4L39QAsUbtkjr9HCqTSswf9oQATYV+eEJwxkrG
	 D5w/FqJnf/9R+fDqKwRGAeiUpzrOJg79oXy0p7x6lc5M/ad1peIWxwhzCErXLh/GPE
	 4bp1srNV8ag3ov5uANC4k0Ko1YXWfzYsh4888CRz4q3/IzUSECk1Tecpe1yWpf+wjs
	 U7w7kGOoqtY4YpEqq+j/r5wK7slqLBp2Wz2RjM8fpLC40EN8e7V0aNCwW6F5+5D6OU
	 0SMgoA8eMVQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3AF5EB2704
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075143365.16654.4640285124376858461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629822bd5119947f13bd13e25e25354b1a54a0408e2b343622a6c6e824e1d9cc
Date: Tue, 10 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770751433
