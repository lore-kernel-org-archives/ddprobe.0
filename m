Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A747083C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746941394; cv=none; b=kuQpKPI8O0xgw44byU09Zg2o0zdYvr1yOnz97AM/TCAXJupb2GzS1gp7YJP1p6/68Vr4m/zBWQNDn6IgoXyjrKlCGYK1KmumlFjJcLUsIWYcbTBbZnfJL5523mhfLPFjVMqY/0FQMoPlmf5ngCNJ7yIMXLq+OVtV3YYbHroxFJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746941394; c=relaxed/simple;
	bh=dJMFhMXy9Et+6Rv6ImJ2+7gLJPru9eUxtfsUV7jONWA=;
	h=To:Subject:From:Message-Id:Date; b=XSfVyKn+Wddqw1QPgsiVwJa8qCNNnsnIHECFb92DypamYSpasQ/PfIyXs+DNS3j01UMpuPM4RcAPZaQ9oRCP6jtRLiVrdxeR4/djYH7Ag/p1KMnX0hpasdjG3qPa2i1sBwJBLa4sf+kCTZusTHM+1BnQc5WZpenmp8ytZ/g1AFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz+07afC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz+07afC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7320C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746941393;
	bh=dJMFhMXy9Et+6Rv6ImJ2+7gLJPru9eUxtfsUV7jONWA=;
	h=To:Subject:From:Date:From;
	b=Nz+07afCa97seFoUIeeNkRqJWYI5pKlhSQnKcHtxqVRCD9DRBoHCs7gDg97GuLdZ+
	 RHGvE0aYEJPABGj/lAEvdIF319YXQkUuPwr2bT1HsUoqttIi51a5nAbITNGO+y+K1B
	 HqH0O23nShd8wFbneO/r4QpzBAsgcAhVOoyZh28WovCNyXorjVLduv0q8TELwgJxSB
	 QGXG0X4pwLkCiKmxubA+XJgkwVI9qYW4zKqy7AEWuSCzb0S8x3U3OD6l1Id1Re7Jzv
	 kpPbVIARDtVjQEoJbDcxIL+mN/9Z9HBUsZBHSvhScVaGoAx1TYlMXL7PU5asJtJsSu
	 aHC/JEXktK/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91788C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694139357.18752.17818453990673454814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c979877dba71525b721ea8ff1f1a66625a63671fa4439ba6a70851bf3954ff
Date: Sun, 11 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746941393
