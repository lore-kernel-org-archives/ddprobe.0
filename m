Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ED747F4A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737360354; cv=none; b=c6csdA436cm1ZMyEvM1fBR9bJZ+W1tX0+Lqo7ue67mqn2ETY0/G+rtJ85YNk7srfjBqegRl8tS+OGzPjB9ixYLNsKXFyPSmYa+PaUG7f2eY+R9SV6vltYn4a948XuF3aa2YMQ53Lt/J4F7yRC65aQbh1Ando2Mt3BabRAS5p8Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737360354; c=relaxed/simple;
	bh=hcTbED4zOQurMhj8J4U7tPDlJoLS/hPFk41sXVA6UpM=;
	h=To:Subject:From:Message-Id:Date; b=ejgX7RzoJZLm+6ipPFr7VHzf8w+jDSZokvPzEGpU3LWH7o+aZK6s2ZH+m9Gl06rutvtMmCBGx8YUzYDVgVWmu+mgA2f4Nw18lekoKZRPQ4N415Wfub3RvQn4eiXm3bYlgtzRxk4JGH1Po8iLlF0BOUFMluS/V/OOSFqkLzyDGLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptoAu8tM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptoAu8tM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A974AC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737360353;
	bh=hcTbED4zOQurMhj8J4U7tPDlJoLS/hPFk41sXVA6UpM=;
	h=To:Subject:From:Date:From;
	b=ptoAu8tMRICZ7MbUHwskY4F8Z4fEzDVqVJcL/GdXPIhMDPPSAYIYdG30ph8VdjCkC
	 RjTacqpEsflOv6zjWXB2+4EXT46D4b00jd0xMxagNrDiTLQ2I45iGlyR4IGMS+CqFk
	 6YQz+fwggd+pibhQz92oZImXRKdqM63V6mRazAem426hQmIRcDKuMx8GyB2QJBwyG3
	 min5ZCWsdMTIpwhAWon+dbxjC/2N4Kyvvae6ys+TWXC8IUGAVTPsTVcFSF8iOh65jA
	 lf1uOo3/nZGLW1TGWj889TRSxP1E490g1Cz+W22dWllEIUyJp/UlZN4vWV10MZKDDr
	 JcyS+ULSit7xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9435CC0218A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736035360.11768.15050890150462586692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616ae34b49ea378ca95144c25aebb8ca289c682bcf2989a4f12caf9ab61a585e
Date: Mon, 20 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737360353
