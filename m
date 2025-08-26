Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1916C223335
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756194594; cv=none; b=scr5y4z+LT0Oh3AGE0C1wnZICZecM4LBlLZydB5a9wrsfZVn3116OiiMOAgYIs7Ocni7KSoIuaNfWkAfUVMqxmO+jL0Ntrcq3rpmZ6bdGIVrZw6crc/K8ATZVxWpr0OYrinFzpazVy8rTa8XdIHZQaLI6RRoH2zZyp8bNX1UHI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756194594; c=relaxed/simple;
	bh=LA7Mh79Yx8F+UcGUngzvllTDMtEOhNe21Gv+ACnqrLo=;
	h=To:Subject:From:Message-Id:Date; b=h+6ofqmtXKpcpLsbdC1YdPE/LukqA4ccC1S1Su3k5beg1h2Myd3Bc3q9XWj0DkQlPbfx29KfDER0Jf1Af0f7uXv63GxviBuZ8G+cwpf9Ml2LMQsSYaWOe65fWfgf2X5A2edXOfJaFbg3d+wVEGfeXEoI2xi1uBLhLAY/7WGclFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMlMaQL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMlMaQL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AB4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756194593;
	bh=LA7Mh79Yx8F+UcGUngzvllTDMtEOhNe21Gv+ACnqrLo=;
	h=To:Subject:From:Date:From;
	b=eMlMaQL686Yf7PvAn1qd9CmMtFYQLpe4L//jhWiRUN1Tt2zCjEd3KhBODYg4FLCb+
	 wRqhgpMCJYFw5HGLLst+eKyWLdJ0XJH5SzC0s5VKp4DpsvFowtTFxnCUEcm64w+Y9v
	 lKvXM1r2KIF7ABz1JK++f93A6etyLdfGUOEQFNFGDdU2HvG+LOncR4RoHPu9GPh3uC
	 /6mk8RdrOhAtseAqLhhX8rLC0FqhOY9GiKq0RO5UHoTBIRHUrRTvmtFZYWJX4QTOfx
	 xrpw1aehrPcXku//l6wWn5yDUP7xE3wWHSXTWtN0aR4+0njgg8xJrW6Ixlm38FULg2
	 StO/W42dNC2zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F313CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619459357.19220.11684128588850111329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8b2130ac765f58c2bcd3680c569938cbdc77aeba2cfab176f6fea890bf1f91
Date: Tue, 26 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756194593
