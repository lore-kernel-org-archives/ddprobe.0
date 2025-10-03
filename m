Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC831F3B9E
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759498793; cv=none; b=LH9MO2czg6K2DABDwtFTwcOVWYdqOUeeH5/3MpYJXRUHnSSJ1GP5/p0qERhkNoC2anx8Q4vVyJth9e4rK9n+Vy8sXqIktSTEYSkE9fkHc3shc/ibxJipeiQlrrja13NunJqHkCsRgx1pKR+szNttdoSxEb0lvFPtoZrXzYqOEEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759498793; c=relaxed/simple;
	bh=F0j8k2DaNtDd0Va0Xgob94DjcudxgI+RYTQpbadZtUA=;
	h=To:Subject:From:Message-Id:Date; b=esztZGDOOw5E9zxt+eVwI7aY+h3NwObFF51YuYrLz8n8aBqTfDE1WpTxSoYtA5jmJff7XR4O9TYAz5UenMlqp/V/MTZ1blll5xGR0xCO108x5r3JNyiSzFxgThUOaHRTBkyd8NtaZwSwMsmMw5loqL3msdagOm2XDTKTmkjG0RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Apu3ZFcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Apu3ZFcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC6EC4CEFC
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759498793;
	bh=F0j8k2DaNtDd0Va0Xgob94DjcudxgI+RYTQpbadZtUA=;
	h=To:Subject:From:Date:From;
	b=Apu3ZFcPU/9CXEkAASiMLyaEkELUBM46XOw5vd0ICaXzzOy0bl1QBSZzECyDPE+1E
	 P6Kyj1nVgj2TUCpm/ph8IOePcyzyKEFCjOtoZ0MaHvfpvTAQpWg0lIFN3MyTp6dMKr
	 SAS3r5Y8c3g2IHag5IgaQABFBBP6ArD+sDCDIh1cG+0suM4JgsNOEP10bRwqni0oMS
	 I5oo2ZeFPH1htAjQaEwNUxKLSKae4eCZ4eBLJkDmS/l63Gv6hNXZMRD7sN4U5KJzRU
	 VOarFhSVz76hacgeSp7TXILcJMVaRLXia9zpzG9WBndFcjaQLZbqID28zto+rEepW0
	 mmGq1RFApMpWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1277CCD184
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949879362.14770.4118172812179808945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51761a75fa8561791da5ae1a0521340cf3f07ba6a6cb0a602c798cde3ea01f1
Date: Fri, 03 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759498793
