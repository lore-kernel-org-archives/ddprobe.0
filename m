Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EABD1ADFEB
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741513734; cv=none; b=qYBG4EcQfMr3wBhlOv2Vn2XTqqhri0DAsP9AnER3khfZ3xCiBMOTUNt13+GxyxrIN3BE/LvG+VUTCAC2vBWjkv3tInwsWBWXYkwQDSxe4KDfyk+y/7M1C9d5IdWQz4VneAiaaSFoHUPzshcYaVaAkjUJ8BqQddOqtY2kAkpG9cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741513734; c=relaxed/simple;
	bh=CF13j0xqCF/mOW6bYJyFSwd9hXLvNxo8yiqnHR7+plc=;
	h=To:Subject:From:Message-Id:Date; b=BUBYBRecsdvSP29GjvJ3UGHlBEN+FmqEXwdIlHN8uCWu/ncWEdTy1ZvUfwvGCbOlmmiUDc7TdtoZ7X8abSQnba5Mu1eKjnjz+FnM12rY21QUba1kBn8yu3rsybghr7alRm7Mksco8XiuDIKDlYLO/52JRpNyJDZpMF5KAwLbreM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aol7p4Df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aol7p4Df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF739C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741513733;
	bh=CF13j0xqCF/mOW6bYJyFSwd9hXLvNxo8yiqnHR7+plc=;
	h=To:Subject:From:Date:From;
	b=Aol7p4DfRdRBOm/N0NltlaR+pKh1Pd62RasxtkWjobW0/pfSwIaIDqjCjMPpxu1UF
	 /3GuqjJe3qHWSh3xPsdVLn81ld/Ggl84cy5/NCrKJTfrRGpndD6IaJgMWnWUHDuFzx
	 y3vRmoiAsO8SWsX9hC/x1hoao3FYL/MAFIuZfGDzvbqT4fbciTayTTL7DXowvqWuem
	 9tBPxUa20WDyh3l+tjGfZRejQOeTsZbjwC4qY6iEC6mLbCsWFuPUBnzW4Frw9nRmai
	 9Nz5zxHEbJ8F6Ar+BLP/6bqGeiEMZ4f8a4IijB5w6oLiZlB2IsiV/jukOPygUmAYMG
	 keVNOKWnEGnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A016BC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151373362.6687.16797784350469822558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddae2e5be50d88929e35a22db905784f006244a17341a75e5097b3e36cf7048
Date: Sun, 09 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741513733
