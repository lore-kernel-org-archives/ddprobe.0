Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB21990A7
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776604054; cv=none; b=WOhcey5Xw06rDYOQetF2yf5zyYq9P+Z/1S/iyFFxeGpuZofddBv9KiYlxkmtKAQOeU6EY6q+n/R6dTVMem+4bFcJiTT2F3yc3cjOt++5v7LuV7hXkPdVWcAmhQTCMCRRicQEc9cAZZbdVX9i+VBqmPUXZSuGZ8R0DnlzE3vhc/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776604054; c=relaxed/simple;
	bh=R50qqU2ZEvpgbDgGtyUsx0x2SJLrZYu7LcA6WWcX9yg=;
	h=To:Subject:From:Message-Id:Date; b=SNXZE8ryxTy3jIDu5RdMhuNaqbMmifkHKY0l6KzKoTASg+e/VcO5+nMTTN1BBhFTR7LC8IF8Ze/yHdkz1R4DvFADH6g/gcABJhYIaMs7On68a9P2sBhNtZ9VjSDj7hhyszpuRwtCdPtd4HREhHiiu0Kqt54EbBYjaLPVUx+vBLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKAJGqjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKAJGqjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB594C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776604053;
	bh=R50qqU2ZEvpgbDgGtyUsx0x2SJLrZYu7LcA6WWcX9yg=;
	h=To:Subject:From:Date:From;
	b=VKAJGqjtVbPHkV8ALd3+Z6Cbi6CasgE6P9uKvRxP89tJ/6w3sKC1IRZDQgh8E0Epk
	 eEu3Un8Ck1pMQLYcncxWxXFIMF2uItbCAtEuCkhIUdPtO+LHE570IEpMBRI1ustBZO
	 li8MQMxDWD/2EWYiVnTsTiCRPBD8uxVOpNdm+/GSW0/aVOi7OLzcUF2+CK9wv2+IyS
	 Le3gwjxeVzkDtcId6pRwsNWw899BqodMItFLsl2tO81UAPFCPABOXTfEoT46btbIrd
	 M63SYHDf4sXXslDTGrgQ5OjLL1P9n2MQ9O0t4+RKUVoo5oDS8bvKBeeCTKw1RoMrIH
	 X4Vc2QsFJqpJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ABEEA719B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660405368.18992.16476154977469045055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535da1b61e6edc20584906f55ee33c40c777af4730f05d31dcc2b1fe4f4abb90
Date: Sun, 19 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776604053
