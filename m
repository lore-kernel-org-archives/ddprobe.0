Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080B23451D9
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757425794; cv=none; b=kMXpR2uLcOXbkYoXx7HljM0F3aaovVmcHTBSbYhS/j6aamHgddfUedzSQSvYQGzpRcG5XgD4X9GuRmfmZ9euRtDT6M2xoa9t29ZWPCYAQs98LrDbGWgcEHGbNf8RKE49KiiUVRYV2Q0av38XBVLlv+nfGGGlhQc/TAlKQrL5H4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757425794; c=relaxed/simple;
	bh=1v6br3+iLW2ZnRpRJMCuC9N9yzn3HHiLDACmlpnLJ0s=;
	h=To:Subject:From:Message-Id:Date; b=j3HExfqwufHiUH4HcG1PlouY2oVjxLjk471N95qUW3J9G6QEwMa14kK+QQAwBiiv5GtHYTxJ9V7NIe/B3qbPXgdP97v7D0c0/25GRs5rMXAfWatJAEd0dSvjEIaPJ9QeEScdJs15f9Wd1+E+qKwrWMDbggvbsR1FiQ6YK/Lu31g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEAf/222; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEAf/222"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F61DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757425793;
	bh=1v6br3+iLW2ZnRpRJMCuC9N9yzn3HHiLDACmlpnLJ0s=;
	h=To:Subject:From:Date:From;
	b=UEAf/222KNZ+NBjcIbCjJ+ctEx7hD4mV099Eqp4diZwh0COdUfXb8qmWhEvphVURy
	 Xud9MG9qPcqtpBnffdTZ8smfSgCnulSr83/4+kMCEOIDd8mQX6SaA58T/eIeEpem2+
	 JnkbICjWNJ6lfqrOp9A+7BDubhV6hITpN2VFPusM71loCG2/YaLdwK8xyIAHsD1iBy
	 Dd9HfKoRZeTAhdvwqQdPOR78CDHy+NdI/HN3CLyOgt7hpuB/UfKQ9NkFg4L1g2Zo3T
	 xBpx50QdOcOgg8QHK8tGZiMcceDKCQgDX8w7T6jBhaIsT+Yg7t8REUc8gLiIMU5g9k
	 X61j089xFXOqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90071CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742579358.11808.15565701615384079209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f718819e7041dff54404cd663b13470555efb8ff264fabec36b85c4161d85293
Date: Tue, 09 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757425793
