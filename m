Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F939222599
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781410594; cv=none; b=JjH8eGvd7KCXi7Nd2t9jeLxFSY3JlTc+9QsvCIY0UyRJjQVNy45mbtJ8B/JqaIY5/h0UO4gzz2b7Z6nG+QemcSXMCZ4B2MqWv+APGAIKd7zCRF+SBuT63cDewCRST/xL45LN9RCJ1HPRV2jO4syUMnj2na80GnYr3Bonz1s6sB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781410594; c=relaxed/simple;
	bh=ujBXZshwGGoIzIoi8D5hcb98q5BnL5YJptm8s/ELjCc=;
	h=To:Subject:From:Message-Id:Date; b=i6tW/l1MuXrdv+zEVE27Olw8NrIV/BCkudEX7+2s0PIkoiJmxmnC3adapxS8/exTtS1lH30+5lRn7qIha3TqfTLhaz4Hm/PpYX5WkAKbcdiMxZNwRl/DN2yo2JKyT2XaomQ5v/V4Sj5YoRnm2jENWn3JJBWhyGiScpoWkZ7N3U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UV/0LoSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UV/0LoSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11A31C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781410594;
	bh=ujBXZshwGGoIzIoi8D5hcb98q5BnL5YJptm8s/ELjCc=;
	h=To:Subject:From:Date:From;
	b=UV/0LoSxYOzLS/PVwW4Nc0GeBcMxp7/rX8XZT9T+UJTad9WQYJLo7Qs87f+LBdDOq
	 sRN1tU7vyQDlqNaAqpiQFDfl+DxvpGaEOUAkR4o+eyBGtKOknd1scHQ77Wj/qQ7MJ6
	 3lkhdZ+MzZGes3CEckn/EdUw76vyO4h94ySAz3NL3gssoYCJi59c8yE5LIaXNEn+k3
	 QltN9WyEKbDcbqVyTFBMKJoXHjH4miJ39R7Z1DzmwDTSl9qretwt//VgdpD1opsvRE
	 anPBEAC/vS8PxWn7Da+yx4NLn57ta4e8PPqbZWJ82kGNtl4ZcMIIYpEpcqGudzTaj9
	 GifmmScnmlpNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA36DCD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141059384.5688.16160559676153546508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cab7fc1ac097860802c724eb6275c3263bdbbf015231b6c794032dcd967ce72
Date: Sun, 14 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781410593
