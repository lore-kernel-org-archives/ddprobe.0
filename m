Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6793EBA31
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716660263; cv=none; b=cU2jzFp5ZLOnMVfaKBUmQFGA9I8qHLSzLrf2BtxbjRwrRdQ/eLNAocuD1bmnI4lPibxH2o1tBxyzAC7vSLglSRk+8Q4tjiO/uAwnFx8iGDbqVOPtaSMgz4Hr2Ctvci/+iGfsBuQg4SvAbnSIPQgR5dllLRd3AFWf1yx+QbhVwJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716660263; c=relaxed/simple;
	bh=MOflCieiVML3PWgObAa3xmPxiBVuE5SnoGjVBAI5jl4=;
	h=To:Subject:From:Message-Id:Date; b=bV2oDw0TxanjY0Z0LhcHrg2oXPteisjMuA0OGAZre8rDKwKThtJ5LcOwU1dAgoeEUR/oFkPDKPDP0C05BDJCQAhNnW+PonCYULtFmY5fTzLAkiA3Yg/qoNT3GNCGcXMaQRQig1k5MftF/WJdFIdn5ckA1FDLF4rrX+Zp9+qLKFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7zP43Bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7zP43Bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E724BC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716660262;
	bh=MOflCieiVML3PWgObAa3xmPxiBVuE5SnoGjVBAI5jl4=;
	h=To:Subject:From:Date:From;
	b=j7zP43BqWJq/EaH3f77mnJQ9QRcMl3NQZTY3r/H0fkrJaTy+MzW4VrXMilNIHPNoj
	 PNsdcBnMWGJ0Z5H/c/oFA9KnWSaFHugwSTon2/ntRj8rmOG+XHvXRL4sOFMwDGR3e+
	 EWnNclvA1PW5WJV+r/GQfoD5tfhH66zak1df+OsiCuxcxdS9meyvbC5/fnNXxdHzjh
	 Njii+xnNGfyOX+nuQW5vMWu9C+7cnvD7osnx7XB42cQFm9CyRkmTupsS4+IZZFDOnr
	 EsWDzgLbyzhXdOdjkDmqDpU+Qo2WjxV+sAG7wWE9oq+FLtMRDR1E2XFlYYOG/1w9Yj
	 j/BtmuPkYdnxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE22DC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666026279.6184.12649020624041807701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d12ee9dc8d57a556122c1bbc9e1c911a52fd295ad6f9713479d430d46e4c8a7
Date: Sat, 25 May 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716660262
