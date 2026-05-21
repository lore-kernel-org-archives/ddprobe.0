Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E213DA5B5
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779368434; cv=none; b=Se/1R46EpOseK46ePSZL1JBt57N9EkPr587+b9drD/HFRF/7/PN/h3Lg7YWpBG+IQLQHSvWftwRIIFj01oukORRiX7uhow8/ZOMxBvLkTF6d2lEJgbIyxvR6TS1YphPHFtI1YndtQ+ZXq6qwkckBQnR4eDMoOudMQQLq9VJmheU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779368434; c=relaxed/simple;
	bh=xKL8BQVVwBgxMFnvr965HbAlezV16p0QvpZVUDOnWz0=;
	h=To:Subject:From:Message-Id:Date; b=rcJbRbn1EenT0IicUjCFXVM+KJtbb1Cze6Bq1bqgJcbQYHADbhLYYSgOtwmOfVebRLuTOtRVrqCUVMoZAKaPW8oOmBrCdFqyTiQsBYNooU6n0mOHsL0gxoRyHV3JxTH5Qoea7fMY2u+HoMUH6HT6dF/0riu0otc8SdSjbmW6Rmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWiJCtWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWiJCtWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BCCC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779368433;
	bh=xKL8BQVVwBgxMFnvr965HbAlezV16p0QvpZVUDOnWz0=;
	h=To:Subject:From:Date:From;
	b=uWiJCtWxUzg1UG8t+mE/HVTDdEnvupZdiNy0YD9cceWGVUb1mgmbRBnnaQOO/5zy9
	 38GR8l2OMKqMxAr0ZsDYWBlqgHmc+xjdn4pkyqqrt8+mEMtlQwOE8m7CEHdzHri7nA
	 HcO3N975poM+PVoyL5PcImlq+z4gP4JBIKjmvUe8N4GqpsvOOvsaG7DyKFogA6X79x
	 4gNxCQwbd77JqgOWYfnovoaNiST58h2+jIPB4nfg1hDOgtiFyn04TVcE+2RM4G5Y2E
	 RCYao2i2vpqRRiPnc+fIpP6RdQMfruQbyVm+lH72MYhxb3xsDZggmUB7sWVpsYYkNo
	 QU5NVIh8UAPJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA47CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936843375.18591.18086182332542546573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624f42783eaffb60266dc29d9c0e8e5345779cf27900259262a3ea7812ae56c0
Date: Thu, 21 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779368433
