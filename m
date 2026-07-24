Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AB6279DAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784857834; cv=none; b=t2e1MOCNlOm8s9oQs6f7F9b+NnBBxxOBvc1qaWl5Q3CJ11lOHtjTLxoB5WFaIo8sIszHpCgj6QSOtsLLMaMRSFpYnxK9xR8DxwLe05sRpcftaM+KdNzyf35Tx/SIldB7WnOWmD16Imbzzsn4QNk9YNg4pnb7whFZvbci1ilqa4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784857834; c=relaxed/simple;
	bh=r2/kYVcW0lmoutNa0980F91N7MmEVxO/YqKgwFo57vg=;
	h=To:Subject:From:Message-Id:Date; b=AJRI6g+unxRjnIFjB+eDxFP4anrACJcBSfi8fNxpd5CJlDOPbztYzkOQBV/cRFfyDaONYfsT/BnpzyTr1EewEJYDCuN7Ul4lKyWSFDUxMMSjI2eBJXst1IQF40XBIsW2SXDLo4eipQd4jg9zE8loa1Ncme1hnrNZMpzeyGauMZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5lfkLXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5lfkLXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C2FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784857833;
	bh=r2/kYVcW0lmoutNa0980F91N7MmEVxO/YqKgwFo57vg=;
	h=To:Subject:From:Date:From;
	b=b5lfkLXwHIFzW4qxmdFHCCmWVhi3ZJpzbObM0W4gkcMEGFm6lhOofqTJfzxoNOBRP
	 LA87BMnrMdsLZ0vviiPF3qX69QuV33tDSAZdzoq23biihMb/VrP/T0ESynWufFVZXj
	 wfZBpF6MDtkcVkBVOFpDtYS4L/Mub8hSMlrMxPwDUdCXuGu8CGincZXiU7LNgefeR4
	 uh7OMhwHgg+mA+TF5TBltY9mmAdULxiaG44Lg4NkwV2WPQKfWVo2/+8nDRA6JCNmPq
	 h59MewIC3KmY8q+KQV2/xcIYHxnBL5J9uJE+GMnDDgn0q8AfNLl2TssTSLr984BlvY
	 ANqK/rhDX2Mrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A848FC531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485783368.26884.9032724047217437710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084f4ecdebd96433784800b83acdb9b645a90e31b62ceef0fbbb31c076d15268
Date: Fri, 24 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784857833
