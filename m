Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55122F362A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769382833; cv=none; b=ehoa0taGPLu3OI+WdsIJfpoFbzWqjJ+PFkp7Gby7z6/YtxlP6qDHq+NhlPzwO0URZtsOKHxWdm6ogIjuL3SBx/dxLd0U5xmnpeQuD3sLX3VDF/7v0hoqR9vWWSIdKNFqMe/xWcvCcmSLxhdAoV1W2GBArhOueVRvjCebfh7+8CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769382833; c=relaxed/simple;
	bh=6L2z86omjPo85UoKADL1MiZ2E8r73MgHnib+FJBQRcA=;
	h=To:Subject:From:Message-Id:Date; b=b1NPsmSNI36DfLqtQS+9KuL8ZZ6Lc7pUf0I1K3Y/kpwZESow3OJfEzfvDTW3y+zOu45xZZ2Wh1sb9TQpF0MgPdPyje6Vp1I/zyjroBGJtMnnq0PgXDmwOm/Ncl4exNkxLBioER2mCCjeWUFKysJWFN9/3dkvs1n7ZyeJF2oJdn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBIiW1CW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBIiW1CW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4D4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769382833;
	bh=6L2z86omjPo85UoKADL1MiZ2E8r73MgHnib+FJBQRcA=;
	h=To:Subject:From:Date:From;
	b=LBIiW1CW3XEo3f9uaLpGuN+lAGbK5eUidu7UJ+d0tnSyVLH8iwrDK2Hg4BomfysGM
	 1FM/uy33L21WKMGyvUFjrk4eFnA62DNV3YS5Nv0JxdKqYJnROB+cci2rpIy4uzVN3P
	 2CFMFIg+DBQhB2kz7Laha6X6y3IcYo9JNpEdkDw88l3MBsUAQx/tjSxL/Cgn3Nqia7
	 5abmlHf02phRnlNNy9HhIA7YKL+NViYDy2KpuidjocsjxTOgkMJ96gKjCL2tg9eHLp
	 Pe1SienUPadSPzfSf7ubR4IKvGgeozpxj0ZvslI5AjQqRHjzFt1Nb2M6MXvow3pcx/
	 uTYTxX/NP5h5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1BE63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938283358.414.10391067938977587265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733f106cb439773777972122a4fff9cf7f59e1274bbb7840be15ba97bfb3ed34
Date: Sun, 25 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769382833
