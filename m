Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBFF81724
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760747394; cv=none; b=i5tOuX84+2JUmiv9mrGier0MRjQLd7XBQjA2k88U06shUF2M4aP0S0N1def4JO5K+3LV8/DLS0C1DnmRpVrSVkt5GhQT/hogXV75ipfeZzaqEhLqQrRSdNPUqq9ZAYXolfQXtiu/Xtn39Rz7RtOKbAhvFD7gCjFwVzmYYP7DMOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760747394; c=relaxed/simple;
	bh=pUJKPTv3eKxDUK7dENos0gadIeBXIcQDvL5EIRX0dN4=;
	h=To:Subject:From:Message-Id:Date; b=XX9BMPUIHfKbQEQ3KvsNBGk8fopwf88iT+ew87rMGlKxMbY3xEkAFj/l7z0Qj9C6SnJuqjtJjcTspXi+eWQmxn7nUQ7D2eVKiaA8uL38oj7dRZyAUiY335cav9gEnOroKfsmmNSoTye2IN+iwQ5rD4OcbTz7JhL2UNf7IuVczXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdmJ/okP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdmJ/okP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760747393;
	bh=pUJKPTv3eKxDUK7dENos0gadIeBXIcQDvL5EIRX0dN4=;
	h=To:Subject:From:Date:From;
	b=CdmJ/okPbsRB3sd3qaRB9gYbeOey5/D7A8mS0a2urTqn5Q7VlqKCI0YSVq7UMBGt5
	 DkLVRsx+E5NcfLIuKn2KVJ47cbK9dywmf9gJXq/oMtOwuhWW/OmlKAaL2PXiWBPH/6
	 yZxMfW6Wf0mW5XsAvVTkTIjkFkjQfLNQhqauRwmRMiBqI89I8nfTmgNv2/1lsp9Aql
	 hWU/OabA26SXJ/U9atM3gMc2dQ3fg+iWfFJGeIk+KmrF/9dQ5A6oJtbkvvmrPFu7T0
	 ge/GiybfAu+DK9wMSiuc+sBWPRKBpeF0O/qGwxpzGwK0Cii+jPihA+rsPzULJWVWoS
	 7mWiWbVPGF6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93284CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074739358.2455.15320106436556874670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50503babd20f5642f4ee44d60a892d5310b1c17d8726dbe132541ae5dd307177
Date: Sat, 18 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760747393
