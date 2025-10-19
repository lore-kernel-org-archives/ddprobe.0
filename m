Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB577DA66
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760899794; cv=none; b=SsiIEKyUAKe4AA65uS6QchSFjhiWlkW/R8Kua2cMLPy2LDXjKFI2MWs9TfcI2XkU07zJeEJru2vEhbmgv6awqnHlo7DcKn3SKCVH/f4MN4A5eTwr/Fz92wZ15lN/JFAIhsS0KIE0/8iy2SXCyyOB5zWzZPQBW0dFbOZd2UlutdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760899794; c=relaxed/simple;
	bh=lVmvHOgcwU0NAu3ejvsS0EhNlf2R1s3EPF0z1xRp0I8=;
	h=To:Subject:From:Message-Id:Date; b=MyrZ7CwGUuQQim9kEDRKN0M02PbEIOuCkEyx/iRycxZmju5OJ+Zcqv8DoITaHrxeoxjVB95Sc+fOlPqFwsZ99af62kKkB45XWGlaD6v/99o6UQzeG/T5dtlihTQgC2Meu9Xg9QgUl4i74u+UhtI18sDtxU/AZcn3fxFbHXdfWzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McAh+x0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McAh+x0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32E1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760899793;
	bh=lVmvHOgcwU0NAu3ejvsS0EhNlf2R1s3EPF0z1xRp0I8=;
	h=To:Subject:From:Date:From;
	b=McAh+x0ukdWF1uIny5sdslj2hULPppoj0m3tZvBKz4UaxH2IQmsRs9frRG9iIfMRO
	 eUTVcXniejjnE0IWJKf8K6cQVCGT+UdNXr7x368U4AQEYWyvZhSNsoeTvAx7+RkZlJ
	 0lbhSKUwnbZpXyO5m2+c4bAdnmZWbdW0HQvH+1kpdPOKnBFFLn3VLKGW0TWL2nqd86
	 7UHUoi+Hv9wZDGHpf+T8jNPVMFeU9Hc+SVmIzKXpaDHzjkgZPDsLZNprzhjGUYDxwS
	 6yuNsxvCWe22umRVjpLax/8gRb9jvJMuuXZnfdRP1K//1m1zqcmiiou8nwsy/JiwIu
	 BuZBkfyMHSDJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C6CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089979358.19234.6173775072767542713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83403580947367080f0327b71997495f6e749bcedd44a43444f33513021df442
Date: Sun, 19 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760899793
