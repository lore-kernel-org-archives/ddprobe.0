Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267CF13B5AE
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759646394; cv=none; b=ZGHuFSodM93U5KKv3tOpaNtA1Yf+4619luI4OxPaI2WCvQY8BsW5RculjHFAv7vhR9nEbxLb0U478ULAcmbeF9z4RA7y+mnUmgYG8JlBlaYhEwzAhCZkq/mXc5deFBTxXoKiniUqXLOXCR7VsreZR1KnidGPNaXMcT2CHU4pSb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759646394; c=relaxed/simple;
	bh=XOHk7oMHB59LTEEsCVCmROdaDn4CkMfJ0dsp/cTwN7w=;
	h=To:Subject:From:Message-Id:Date; b=fM+LXtZdtpGPVlSQG9uFkyMYKzQXVX8WxPb2vatFTYOPOz4H+GbrIthXmU0ogfTREQfknl4R80bx2dphln/SyhVPmMmIscqrrTNmEN9UEWtqir66/fBONiUXn2oli6GfBFm4nTHVijab0hwS0O9l0eJa0gRmgVxsdRtKHrRhGh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rau8WPRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rau8WPRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759646393;
	bh=XOHk7oMHB59LTEEsCVCmROdaDn4CkMfJ0dsp/cTwN7w=;
	h=To:Subject:From:Date:From;
	b=Rau8WPRoLPsHtoyANkpi5PcyW8Ss2Q0QgbXcdpc2+DKRp6JvSaYaZkAzNi7rM826L
	 dMFJUNsoXxrNHF7qbOkwjst0rVcQvfJm1P/wulxsyIglSNRjvk8EGzNQjWFvDxv6I4
	 WPVU/hibowqUq7cOuq5D4Bx8wa+3E/epMhhk8hBc6uBU8rn0prFL6hDxaG6k8eptbW
	 JcS88QncQHPiDNYhtXHJJeDH8rs3iWdkn+qUHj8wcVX14KxQ4RetJZLGeLhunY8CcD
	 yiLRP+B7k4QFn4S6PFtBawXC4RAtSJrahuP+LZYZagmuUoebdOf22qCNogKrd6yTA3
	 yCnFmLB+t7blg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111ECAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964639358.28644.7976333371372959285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13da34453897e225a776e19a3eaa235d8550162e7387f939c67afd5683ced74
Date: Sun, 05 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759646393
