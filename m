Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A6F3EEAF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782469654; cv=none; b=Zz5KCykTg+ls13ABz9AWArHEm2Bgormqsd2EwlriY8XEVGgBLg/FI5WezeCC74Tn3uyxnnLG7r2yC7yRGDZlDmiTD7lwtuEwkbHKXYu5nozPxRoSgRBnyIqOt9V75stT/GEp7+w+MP0FWUGLJWnPh5hRkMXVV2IwlzhFmHn/RCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782469654; c=relaxed/simple;
	bh=7JKXQ1+blFxpBDZXxccBw85TOhv+Tbv1gyuj1/hmj5w=;
	h=To:Subject:From:Message-Id:Date; b=VIwSdwIAD6L/fJsrvjvInjVpbmaNk+0CPkAs9FSr+Kiats6UzV0HDqOavbRGO2WBTkrEw87YYU03d8xTPCZ0uCBDjJSg2G3REDelX0mPi4f6fUPVFbqoMf5rz1GGLfVqCAT+y358EWsfLRUCxiCkd0W+/B4SlyA6nBxzyp9Bhcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFq70QL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFq70QL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E23C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782469653;
	bh=7JKXQ1+blFxpBDZXxccBw85TOhv+Tbv1gyuj1/hmj5w=;
	h=To:Subject:From:Date:From;
	b=DFq70QL4QbwBssouI0+1cZXr59VyEEu8LW+SulsEG/Yut7pQrmzhPF9ZVDdiqq3s6
	 E8TaDAwZBOb8KRRR/Kjrso5I+mxPTGTWpil/tKWtzk+IroJAJbN39O08NqEMUyxKRd
	 yWH4cLqahc0zbo7bE6iS1ZRtxQ2bwsT1XFc3T7gBQtvV1Q0AEhX3fh/zYiRVlqqO/O
	 KrfkB6/K5p3rI+brk7SNZnsHTOynAVlpGADf/qif7dHikbGpZHMPfCCsqHm4e3qzI+
	 77mqIUAXn97oK7AJFGJ1DS+qpheg3rG8gxMaMcCg9a0UJoeAMS5/rx6lRAFrv20NZ2
	 Ynb8xwLz908/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78F8CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246965374.707.15550108152524606658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b477923e40f8fb9253108d50729ce7491f9d64d9dc471a893a96e778f4122752
Date: Fri, 26 Jun 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782469653
