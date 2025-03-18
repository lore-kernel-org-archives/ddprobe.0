Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835FC1E832D
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742336994; cv=none; b=jojyIITsauzHcy36sqD0r8caF7qrgZZljesF59XCIQPI/ur1SKAjtQOBtkt+gX/q7BDWpsq0V+XJUK7HPH3e+AOzV4atp+J2hZqpE/A3u61rf82QCQL+ZoR34w3cZBztAe4VAFNGt+qZMwB4B66AQCB/nf94jtfbEVLLs7R2Z1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742336994; c=relaxed/simple;
	bh=EDPVDFXH2WRw83SucSBkN4fWcLsO8mD5MdsA+p2X1aI=;
	h=To:Subject:From:Message-Id:Date; b=hFwwXh80A1xBjSZMwgbXwEO27c2jDGnLgSjOVJErUTbojrcl9DnGEc9bZaj2PIXmn83tpG/iLSabajkzMZjjVN/WeOJEvYq0Zjx9zDjH4QAENoLwFH7WBIQd1C2zw3abgmGMaHbBnpkpELL9sEFwNTyrmYcXmCVxb1xscRrXPe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWnlZc3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWnlZc3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 050A7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742336994;
	bh=EDPVDFXH2WRw83SucSBkN4fWcLsO8mD5MdsA+p2X1aI=;
	h=To:Subject:From:Date:From;
	b=GWnlZc3hWaPHHfWUbZy78h5lzKE29qH7Q3IdaMESsZWINmKQFF8hkP9mubFN4PWAN
	 bBo/PXsGNoT+f8YqLjupRRMVebdfTjQiGLQHl9QK3YfQPoHs+ZKuDS+T3z/c/J340T
	 ZTE109GPzzKZ0Fd+Vt7JaxLRPBpyhqBTgFyYCRK8bKHfOeTrz0GRVXtJbatOkaErHB
	 +0sF+uNZOAGg3qW29KVI0Zuvzv0GC2S35ahbhy4ta1Uew+OHHZmaGjvtCshG27ecFm
	 acfcerky9YBLloG9dhFmb50jseSTBbv3e69WwP6ddo2Tq3fMWNLPgaViDPry0RB19B
	 6spPkSxf2cmrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E07C35FFA
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233699378.27015.13938022122157202717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50eea2c8ee3067a6f491ae48ff16b92bcc0d92c313c36b3d515d6c46851e9153
Date: Tue, 18 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742336993
