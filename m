Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB1413210D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724826954; cv=none; b=ZILzzsvZT0MNt4JhqO6LlYdadco8liuQ6eGvBC740l4hhPkv3b+p3l4yjHgQCv4XHIu9k8i3snE6vV5BNx8geB7TmYWIvSSYiCR9+UHDi3ik/YHiuBs+z4d/Wfsnz5+J3TENyilgsRG4jpKn+E+QV3SA0D4sTcnK2rZgnexHyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724826954; c=relaxed/simple;
	bh=nMEU+oCxoEtcL5a5zyXAmLq3LC3/qMhnMzb/UEUUUy8=;
	h=To:Subject:From:Message-Id:Date; b=WTHcfqDMYkACjrl/NMNRdT98vooFEQPagrl/B8Wds9Z7kagofme+mgmuUliqPl6bqpzaV7wVH+RJDKKHG5hyJ6B4W10Dd6o4AlZSyXwfIdKowACa2O81T1eC4F4nHCCBa2U4o8d7WqYXU/lm59XE06qrmx8DxxsMID4TeB0Wx8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMMxgF77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMMxgF77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C154CC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724826953;
	bh=nMEU+oCxoEtcL5a5zyXAmLq3LC3/qMhnMzb/UEUUUy8=;
	h=To:Subject:From:Date:From;
	b=PMMxgF77mL34QRsWtISKyHw6+KdLRyN8HMdCUoyX3UNPwfFGl5JMK7niGNqmXc6Tu
	 4kcNXD2+y7FayZ7TGS1k3RYJpuqlTB5VGXpN0ePBSa4UFypCYitT82vNV++k+5Fln3
	 4laOKPd0va+A8jNPiXj2vqe/o180wshxipOmQIfUvHY0eV2xqf2y3ySCZO02WqLHYT
	 hVjNi8yoeT1IxKyyEPEbPgYGNG/K1EeADk7iefvA/BPrUmR1/X+0FVawjy0+/gFSMd
	 yFfcW8q4bCP46cChXx1i/yV/wZZTnFFYvai3BDGN3dWzoCc0fb75pah8Km3TYOnry+
	 uraE3nHBqpi+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B4C5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482695368.15066.13319783012239600750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87fc694466902354afe5d0573a4a3c4c1ee329c7a8a9b6c46178b44d5d5ce2b
Date: Wed, 28 Aug 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724826953
