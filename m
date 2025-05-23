Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB1517ADF8
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747966794; cv=none; b=iR/Hetabc3gqqfCsezZ8JcMvT6lvJTFHFQMMUAgywETpr6bSaYC05sTN+vKV/pBXSJvOelxWVaYc9episCR4GAKtXRxdsfueaotiVMRRxERtplG8qK66kRxT3vhJicnWv1hPdz2/Ywjk+m/4UiTvsYPeXIOco9vQOjiPNJtT+Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747966794; c=relaxed/simple;
	bh=nkcfcSFDV74k+HhqKLxduKNAOK7saVsqtwXdxTNcWCs=;
	h=To:Subject:From:Message-Id:Date; b=B7NWpfWnvaIj7r9A+e1nFRttA3reVzgm9mJJFE2QAPb3Ab9/EWcIPPnWLmBA+D99PnFzFowmtxoWiF22dWQkEmf1ncFYFEIIRAB9iejBbM8tvWDdv20p7E1xIkCJnQW5tIygLYy0/nXuXDRj12BcBTcmJd1zrEy0VfDKtmoXnpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GL3DMYAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GL3DMYAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E38C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747966793;
	bh=nkcfcSFDV74k+HhqKLxduKNAOK7saVsqtwXdxTNcWCs=;
	h=To:Subject:From:Date:From;
	b=GL3DMYAgzOY+3ybE8JLHp8Mm/VdVoo6wjjGQl08+WnQ2BF+eVtNv5aGwcbcOk/do7
	 KFy5SeZzqnJavl7tg4WIln71NvfwskAd0o1lfmjbyiiGZHTZktQ1IXfqNjI48E6Yrs
	 ehIRcZNHCKAWxOgK4fZqn0QF7DIPqRtol0E9sBF3RBAuDI44i0TT572JrVgQcpCS5o
	 hWiMMhw7nrkwTdgRdhVUPflGDtW6Ec0GMulHvajC9u9kFfT+XCDuHHqqeNfkeDFfVK
	 oMWkZv3ZDm99kng29lv9MfCt+Ed0YwZp8BAQSbfX4C8Ue9zFC8mOn9ZRytIfv3bSyl
	 R2UQmKycZN0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A46CC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796679361.11064.14903946305292412514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11800415104e0cbb2c3f6fb860cd205ecff7ffbc863f6439074f74e0f01871ec
Date: Fri, 23 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747966793
