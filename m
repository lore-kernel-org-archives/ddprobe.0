Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196FE26A0A7
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776093454; cv=none; b=YkqTHVpfslfEcTfTfPxKpBxMfA7YrZ2oSWijoUxE4spsXhCNpb97n5O5ZC0mJVm6D5YnM6dh7RN8a7uzMOaf3n46lNl192c/gEbAZ5MK1tFrmrT0qdooGTR12eZmN087p573uNwsutYwJPMxHpOt2qVu9yCye6Q3n01aziaCAIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776093454; c=relaxed/simple;
	bh=snGkIzOAIaRVHSN7qdrhsbpnKk6XdDT6UxiXeIWR5cw=;
	h=To:Subject:From:Message-Id:Date; b=YQgM1HSUXw9nCVqxM3KJyUVtYFuVO0cWagmFTAJy+PQBPA99B0KxLd3pqtcSqsLigljX21ne2LwzYdMIVzcNVCw0WW/cq3fBTJukAMhCW4gnAQNmGW1nI0DoACyXwb1Iq799TL1IEnSb7arovhPy1p6DsBXjRQkj0UXF1Fx+C0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYsDDXpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYsDDXpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8E0C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776093453;
	bh=snGkIzOAIaRVHSN7qdrhsbpnKk6XdDT6UxiXeIWR5cw=;
	h=To:Subject:From:Date:From;
	b=CYsDDXpY3sthZKiqbwZ+yZ3b8XIMse0oDAkKrXX4lR1QtSaxICLutAiMiq5R8Njj8
	 /S0f1N4XOa/Y1NT281tVDl+YPEfnrI7BpT5dBy/WQYDF17Y/ib6MUFHEhyPHlY/eJC
	 iu8Pz7x0PKW9fDuAmCT91AB20awT9SBW9fiKb59MUbKyz+YIx7ZnPmKiVBJNCWucqC
	 jdt7jiojy4hDmhP4gtUD+RmveO/NuxJdUcNcSwi8mCOHl2xt5flYjOSsutA9MF5bO1
	 kYooYEBd19ZV9Qt27qKO6dZErVxxIhoVNypmohRtwaQff0Q8r8mR+utUTvI5WkZbrD
	 bnVdv73L3uFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E92F34C5C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609345368.1786.14006554485888576759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed3897006017d863cb27858332a515ff33e9127334b4829c3ad1f3bdf0babaf
Date: Mon, 13 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776093453
