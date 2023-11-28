Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2014C3457D
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtgCEMPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEFFC433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701176896;
	bh=0OVfRQXz0i1k/sv1s0OT/j3BmCuq+zEEiCrkaRDPzWo=;
	h=To:Subject:From:Date:From;
	b=AtgCEMPYFs+PAvwAvwJ2CadJUuuwB2i73t6usC0lICHlb3QPF3FyWpXt288zuNv+r
	 zN2lG1TcEJMjZe0bTGkIAOH4fY/Nl5Q5eizg5Tx0UsjI8laW8rslhN13JZ4EoZxrjE
	 erNOg4VeQIr2Ds9fcSN0/FSGul0hCmFFVXCH/yBcLDNk64QVyHFIpIteOxA1Vt+m2t
	 +J7Kj2kdg62oi0f9eYKZuRJi8bhMX/JoTb1d5xbCjonhDF2Dvv1zFcvFGi7EI/qb2m
	 AVt0jETXO0fNNw8lUJ2njDbAKirRxbbaE1isxC/p4bweL4Jn8C3TBIp3yGyVRvj+gP
	 ZyMz360yoa3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60985C07E97
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170117689638.16727.13768776352883144156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be9f73ae94c68ab92f9dc71a08783d3bb1ee1430820be9612e3adb549968dec
Date: Tue, 28 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701176896
