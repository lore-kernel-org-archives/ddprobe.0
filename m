Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA0E1A6836
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778349454; cv=none; b=nDK5mxNsC5c/4tnJgya4mcpR6kd9kOUhTuYqRQAnaUjI/lIbcuTNXxgVPAxJqAo5cw86YXNMhuckVmM3+p5htiD2UXy9IfpG+Rn8r+ct81n3PFoLnPdvLpvDhHMwOd2FSsRfx2me7JEm8rJrp6UDO1ikK7nLNJ+CzDWpGqVeCMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778349454; c=relaxed/simple;
	bh=My2IjLPUNNMPerTcpG3qZe52zj1cd4xkX/EOs2pWgAI=;
	h=To:Subject:From:Message-Id:Date; b=uycEpFLno3h5I/6MGEFKq5Bq2LVLnxmHJ3VyIs7dBn2ctM0lPFFqY+qM8pLGfuabO192bGn6f18XzQS5iDC4znLw7d5Ct5E7mpaFVWOTbn/DwXQp68B6QHt+5lulAmfOpEs2476vciUT7yfaO8gOHpLDT8BiieDHdP7U4AFdrgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EH8XFAHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EH8XFAHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B6EFC2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778349454;
	bh=My2IjLPUNNMPerTcpG3qZe52zj1cd4xkX/EOs2pWgAI=;
	h=To:Subject:From:Date:From;
	b=EH8XFAHZlJ/teuPt/LW4P3/rXmEHDBMihXKzAfr2JskaJ7vciA8UadUqwYgUT/z0Z
	 FvpVWlvIHVJSeF/peU47FWPiqG2ocodhVgKqS4nqkxNse9Jrnm7Mfv5/WOakDmoYWK
	 oilc7PbNqo7GvHAayv58QNOx7Eyuq/3ZWVyQHa3Q5i1uV5d+YYJpJQ367RqQa7VAHn
	 z++Vh3/nhEAk00VRkx7rajcmoXTdzx6j9PlCecor0+ZIvvO9kK/0XiBuqNLC5T/QDa
	 TysDtD1OgPiymxUr2c7br0zq2GCs//lHq3Zbb3bWM3wSzi3d4+oTW9hDKjvpciYtDO
	 C8o+kZls0slDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBE1BCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834945392.32207.7945019949716245040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90e4fe2cb0effb12cdde8bc479f2dd3a9718e8be5c14ea59144e9f72152a190
Date: Sat, 09 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778349453
