Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1DE23505E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759358994; cv=none; b=kQQv2k5yzsfJEAXdmzCWFPGyzf4/QSTxs/gc1xG1jJ+8SW7PP4dxPb5DtsBAmyDSJsS409/hEaP3+8jJGeGw/2ghAkxHJQHkDrDmMtYsYBjd4h46he9bNcSMd0hLlgFaUr5i+xfGqILTn/XiL+vwFyM4hT2G5TqK/YSgDTZEiZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759358994; c=relaxed/simple;
	bh=jL94/M4zkPT6XGXfAWG64A3FmEqAMa4ndRZK1OhpHic=;
	h=To:Subject:From:Message-Id:Date; b=if9TzG2DjX/JxagMi6YcXAnAdCJeWr9MCKrnETzYfCsi7pHkarrh13HvNJHDkkJXamz/6QtMYPv519ttsHvtmvzIbUMrNFdls6kWpKI7TzJtvjwD/e1bOguK1gHS4IkUcSNUqsHP9qGDlb3aQ5i65u2Vbab4fG1aZ8XHCceLPOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLIR23sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLIR23sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA03EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759358993;
	bh=jL94/M4zkPT6XGXfAWG64A3FmEqAMa4ndRZK1OhpHic=;
	h=To:Subject:From:Date:From;
	b=uLIR23sqjz1TjpGcSMIftxmqObC6BtY4lk1pwmYM8XHc6mxexDR2Wt3ABaajmaAwD
	 nHIV4jODRotqvSTES/6vFly7aFIF9BpdyvRWD2gNpQdEs7/XVtKPmrdZL5gqCEeUJV
	 CWS70AtMIlJHPl0BwlMmzGI+2geSVPL+26a35uFEMEXJD7zlm2drB84qnUII7C7j6o
	 tXSOpzkxeGeHYw+dLcYoc6kPn0HHloA+zICZfRPuHx8rJKzYKeWQz+c3mL97aW4pKE
	 MCcUSUNjzgvlCGe+JutI7n883tAdu6S6KvjyTDjHm1Mm24B+Czu+WUH5Xrqaxvffu0
	 RKpkaXymAn+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948BCCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935899357.8560.12914683126565505816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9152de67d9f090292f3cc9a439473ae68a49cc6360cd766532350b45b0d06645
Date: Wed, 01 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759358993
