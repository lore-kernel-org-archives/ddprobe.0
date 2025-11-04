Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353F41D5CEA
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762223394; cv=none; b=Oqv3W9FDQlZO7VT2JGpdaE9wnj9BdprEGSigcbm6qIbu0FvQ8SglM+tHWoOdBHev9sOg8bQixy22MFsBkGIBHdY+2p9BZmIEPYKNVzRvzYI3rXa+HoXUkXDTCwsB3f9rXxO2MXUMfto0hjGqfA/9V7Y5mBF3jo+CyuRWFChKf8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762223394; c=relaxed/simple;
	bh=e/d62NzDOFG0aCrBUJzkVQYO6wP2y5AIe6wxLgrdGjc=;
	h=To:Subject:From:Message-Id:Date; b=Ayt+FAiRYHTisO27sJwEbZPmXqc/MLRfmr7D7l9dD7bG6fPq2s0GcNWfszQnPt+Q71JIz53yAcDD8oTNvXO1s9sHPLGskUd75a9zhRp939Yf7p9QksI42omJgCRVTVpfTYS1hYNR6F/OZM78cUx6/qh6Kh6NuQ+nFZvX+1wQaKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX5LUEfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX5LUEfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5AFC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762223393;
	bh=e/d62NzDOFG0aCrBUJzkVQYO6wP2y5AIe6wxLgrdGjc=;
	h=To:Subject:From:Date:From;
	b=nX5LUEfglt9zGOHhqlDUjL/IRPyi8jeSsDzbqdpNdzc2HbiRNAMtGJo2Vg+KGJt6D
	 l5l/VSj03fI9evd/vOvHaZF5WobV779HYqcctqMVmp8qNdGGlbcGuQ26jof3LaRn6p
	 ZmPmLIfhl+mNTcHjB02mLjyRjecsdaNzgCCL66stxxA0pECoPnZ9UakTTHIUeXQk33
	 IYn3tU/T7L4vG+tpI36T/LkbBCBpxO2F+AYxW6RLrIhkuTC21e+CNwq/zBBYN8YsqX
	 fjbLHUpbpQQVj4ShVuZMNgSWmKpla+qMmJ8nCFd9LaxMT4xTQaXSyCmjRjaJwtclwh
	 R0wIhLigydS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB20CCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222339360.12996.3740460782891809257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00312a52554512e8204cc6f69ea2ad78d63930a9d2207670a47bd46ad299839
Date: Tue, 04 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762223393
