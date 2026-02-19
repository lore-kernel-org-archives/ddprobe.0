Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5DD2ECE91
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771496694; cv=none; b=iGmvLUuOxWikmB7ZPmx1VIu9XuCfPAsVlwHQ1Y9zEXyJ/UlBxM6f4BC3Lyu/+5FWg7X308Gy9tKGP6xiZpYxrb/715tVQglVa//1gtr5z2Qk0oD8A2TC0GazBmrz6/jPTFk4HldnKcvamXyyJo9j/fyY8NR8enK3vI7YTXytBr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771496694; c=relaxed/simple;
	bh=HPgjILVxbG2S0i/+z/rJLDFEywixdcVs85+60JdXkes=;
	h=To:Subject:From:Message-Id:Date; b=OMbDlN/qso84pmlWubQdI5ykgog4+42Mp9vqLrgfwDKys6x1ouaubfxg4MrR15FyRFkRkJhzRDz3W6Sqben+DQTbQhhWE/Y4Ue32+h4TILdFSi8sfscl5XjEubHYJ2Kqa7tDdGpL3PMXfFzKglgTSJDv433Pkb8Z7LdD5iEdg9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfQswfam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfQswfam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B698EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771496693;
	bh=HPgjILVxbG2S0i/+z/rJLDFEywixdcVs85+60JdXkes=;
	h=To:Subject:From:Date:From;
	b=gfQswfamxu/GJcV0dX2AKJYkyZMAqxOaUtDa1N65nys3xeAlLfyg2Rk6d/DnOFnFR
	 bruZlUOdlaCRDi1Rffmvl+Omj2z5tnFSgWSxeRRfeNRKncCStsNPPbYv/O2FKah4PV
	 nl+GZPWzMwyhiley1MoGAk8B6LcutnR9FiXL73fLsCiOWMDE9BIdQYg6M35k4vVTUP
	 as2p7aDlqRh537y3UHLlNRCsOK81/Rq1uiIUHde7aWOI/Agqz0gHeaEPx9nuqiwE8r
	 pYXD3DwTS+1TBXfqb7wd8m7YxBmUmiHj9llxLLlUk1DX0hRd3xa5EQCXr1m6JouhIw
	 pN7BN5XCw7BZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A444E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149669362.13563.16191286317255416273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66b58115c6273e6dc007b672e2d7d6201391a76e1831432d377eaabe52b004a
Date: Thu, 19 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771496693
