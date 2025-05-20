Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3573B1E5701
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747730994; cv=none; b=GJ8jSaBv8Xho9MDzkM1OCkzfR+OK1kAxCtraf8sk+nlF9iTuxiUBJSauteFMT3bqeb/MVuBipZI4I7gLyWotNpnqJf+d8EIyoHRaWeLKBcrwkFtzTWXS6KuqvepBTx37STMQt6jrADatWAMDKBQMTnwt3Nga2aYLZ6CILQ23knM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747730994; c=relaxed/simple;
	bh=4rjj9id8oyWtFRHt0tFWUujfUJXrDQVixzhXEOTr4CY=;
	h=To:Subject:From:Message-Id:Date; b=WPf7EKPCPjLtxr75I/4nz17Mp/D04syBtNMb7rJ8hzTjNcC/90AltELy2d0HzSUyOH4DEALIoC4zxjTxk+nbHDVHgYf23NgJe5jbmWdmO9Od3/xlfS8QnNeyVG+AFNx7ypJCPsfIAtW5xIHZe53hJ0EysHmhBfK1OoyUQPY6fm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Krq7tGGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Krq7tGGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC63C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747730993;
	bh=4rjj9id8oyWtFRHt0tFWUujfUJXrDQVixzhXEOTr4CY=;
	h=To:Subject:From:Date:From;
	b=Krq7tGGNzuUwOMZ8RdGZp1H8QVik0sWf/KbBmRKUw0/8uO/sizmFopRrYnY/AcGW+
	 b9DK7ZmFacX3SJWaeffiI7/p5bNxrHrngLZuCAc7FgGPLL5VK+jGOVtXbwi6G9SDPv
	 AXs0VfXULwdlKpU5c6pZXDIugK78AmYNh2HtzYZerfsDKNAJeTi89uzMXaoAX3HmBE
	 LAP5JrG0s5bAHETDKZAVKkOaOZbdkNLPeH/9PShwPeFe72nmPvf4EJcSnQrZ+40Zm2
	 Jpb1WGfeAle51M4fnyikCzzYyKgy/YtCfis+lRO07E1VE08RLmispXUbNQcw8412jm
	 VG+G0pydAuGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D4C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773099357.1722.11852774603019488231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9a53a09f693037dcae559ec3ca93564ad4051daf9790eab1989d809567be0c
Date: Tue, 20 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747730993
