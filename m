Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3964F261B60
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760612994; cv=none; b=o0X5GlK7rJHl68iDW7cPcRj+rIalnt7HKMQwiDPf/Iib/+YHStorIoQ8dU1udKb3SpQUoqm16yktmyAwlqedTGRHG2z+3t/nfp8MmLfDSYJwoZQuSzoMaCW8pU87qrpCrVW0ect0y+ACwcgJoZtOwKqSp/BL2OPIWkLWKx6VMj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760612994; c=relaxed/simple;
	bh=3HWAyh8/YSo0bHPpa9oicIm6kRBfJA4NrohAsVMgJXc=;
	h=To:Subject:From:Message-Id:Date; b=A1sdYC6xeHxy0C9yrwcp+bpEEzJYWLm7d0P8tov47btw/6rUNqvkz4FT/8525RptP+CtftCwGAMI/Tw8X3Ku+54iGsa2fXSmQXXQ5dq00tkxAtsh/qYxgux4iAQGZFy+i/W+VehcOQtE7APpG5mbcDzxtzDNrQYvkMLeDKQuTlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMToy+3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMToy+3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED55C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760612993;
	bh=3HWAyh8/YSo0bHPpa9oicIm6kRBfJA4NrohAsVMgJXc=;
	h=To:Subject:From:Date:From;
	b=bMToy+3VAbc2WjNNoFx6AMGu8wyOLS0g4wMNYeL5J0t75grKu+wJnlNkIKiMMu6N2
	 9f0xZpmxMoTh5HxTMVDFpg5Vm3HDgLFNf7TyZ/sU+HywHBoDwAyyCyGSJAdJuk1+88
	 nMYoLMOLv+q1bm5zN53Uwhrwo20riCMShJlUZ4wIduqHCCB+KinLC3Xip8xTNOkb5r
	 786QkLM+Ue90/vVsuOyOs0HeUOIMA4nzORPk0X8u5s56+n7MjfDlx+hVPZEuNuQIqx
	 iKmin5l8gRX7FJi/Jn2cZTFl3iF8Hs3wLPjYPUFys+XcscDGv76nKH369fURPRzJL6
	 9+NC74/JCVYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D5CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061299360.22562.3241012968630476488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739850fcc9509424648ae6cd14bdef6c45dbd8db3a0d6cbac805785332b23875
Date: Thu, 16 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760612993
