Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6D47E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D72C433D7
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668213654;
	bh=9aWyHL8wOCE56w8NQoJEpMnXvp0ETkU/CIBQ52zFnkg=;
	h=To:Subject:From:Date:From;
	b=JAak8qgCB8ZGz/66fb/Br1k4P1DPcEC1CNO2GE0i4x8cVj4wBBorEZInS1PUtASQL
	 beJhYLaS7IJ4FfutBzM9jN6NZ6b6z89oVPjyatGPuMhfvkH7W/2qXvOdybFXXBbM43
	 tJQqZUNWE5pRWh0ANCz3MLx2sm+X3PoVwQ+n0Cdrbta7V7uwH6t1Lfq9z0JbJLdNoq
	 /wjEkaGv8PYK1NuNu7byvM64WCf1R9HOTOSgDn9vdSKrKu3W3pc3hWGHcNWSH33WKl
	 lnr3uNjjSyTSAul4oQGaZNUaHSVcJmk0WflC89LDEziMatq+DS6LZQ6FoRSgceSYTl
	 8Akt6WpcDA4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FC4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821365435.19596.6067164553546604665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9a1ffc774030cfc96a91b3ee2376cdf89af16afa1c882bd8ebbf873eadf9a6
Date: Sat, 12 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668213654
