Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E4219D074
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792372834; cv=none; b=qIJcjn2AlKMDzMgx3trwPepbXvLl6i5ne2iirrDipS1TjO1orIw+ErNPnO2IkR972pYicGZZPx7b/wisWCyE4unBYf8dbxrOvMkMeAf0Z81F0t0gvUOscRHsu8p835oTM9C2qYiLQsR068wn2TFlnuhuC17zbfEmgvJmANxwb5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792372834; c=relaxed/simple;
	bh=Jb4lZGhgFSUb/iVqgQ8vgioY2fmnbcjUbVq7ZYsTOAU=;
	h=To:Subject:From:Message-Id:Date; b=TU1leSd2J4hnT302bskVOiP51O1bJoirMJgLmIFFJL5I3YSVhcC6yXebULu+SKdQtOP9VSqst5r2Rhep1q4JDiGPRCaS7KAJ2NzyD0Vx19tnlp7LiaxSiZtIa2hljULrOLWMM1tVqtgfSCX0Y/er4YTik9IEQIC6KRqC0S6zsvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ5cSTWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ5cSTWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81ACC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792372833;
	bh=Jb4lZGhgFSUb/iVqgQ8vgioY2fmnbcjUbVq7ZYsTOAU=;
	h=To:Subject:From:Date:From;
	b=TQ5cSTWfF8p7Sig/zDXOaLHzfHiL36J7dRHnc9/xkJvIJF+4puj/eBrRb0MG2THk5
	 Q3B7h4wGZLjklixtvFOrHhCQzKteWJy0XzQawCCxJJNr9zhA00Ssk4eLyfND8WSZRd
	 Zph/s4dQPACEvFnfnWAQldfz1jeJ4VHphG8UtTwBgEsAWa6UhwEgppk9LwcClIxYtu
	 Gv2Bkaqo5EE2pHZzk+d/rvZ8IDVs7UJy7LOlsS1XXBydMFiDg9YJ9vSzQB4AUzgDKp
	 i7E58GCs7DrqdWc+QZv6YdbbdpOrlmb9Z/N2dbSfUzk4zi+8ZEyDEX3oHjcjRcSTPI
	 9ODcsNhU20MOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7A3CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237283373.11268.10450124077615078690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d924ea61e9d613c8fb3c0d25cc88e378151ef3218510be4e575ba66b77a09fad
Date: Mon, 19 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792372833
