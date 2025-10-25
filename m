Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1524321323C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761406794; cv=none; b=Dga7v7nKXwy8TIm8Spq/Q8URBr4Uk4BLSEMUuePdEnNvfoZND/gNUuz/OhxPb+UMv1Nlmeu/YHhSnf32n17AXf+y6trlRWuCTFZunrR/N/LpOaPOKU8+QfyPyTupRtYuR0bvnzDxF1SPywRWD/VZKubLtGVlZXLoxJeuoARkDPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761406794; c=relaxed/simple;
	bh=5GRG/we/Xbziw3MymI3PHLj9/RSvUEzt2BMjhwG0b0w=;
	h=To:Subject:From:Message-Id:Date; b=r/ljwOG9USTJ7nxKc2xHHfkN1jzNzNnm3c3Xnblcb3wBAx89r7B1MYC3EgaHEPFEMnztSLkuaj0LGrE//6iqe60qKIKaxKVb6AGi/mLoUxu/rPJVGlmZ9hVk0lvnQ3m7CJMgr5JSOpUkSpC78XTI/si0U3U3Doxyh36R5ckWGYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/vp3M2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/vp3M2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761406793;
	bh=5GRG/we/Xbziw3MymI3PHLj9/RSvUEzt2BMjhwG0b0w=;
	h=To:Subject:From:Date:From;
	b=a/vp3M2d9ArnZ+bKyiBDFfJVMcdvCyEg2pLIq1sOlWaEUiQDyC4wR1XDaWrWK01z3
	 NK62jH1KEJoDxB/qvZLHb9YiXNQnFtK2eSvsMJE2KqyZVIGV9XQGtnwH/ZMavbzm5s
	 ZMNWL9GeGtpZN1bvLSVvO+RG9jOsG3PplfA6exTYKTE4y8xVmp7mXqeyEN3+WWnc/w
	 RwAPV1FeUJEjNxvC9bXUp7iVRTiUhMcZYnh9+cq7kXlKUsn+j0qMtrUfYRgOefvJTm
	 Man1rzay/vf+UZ9+KtiRnTGMcvkewdm4rXn7ZeCGKmto9NrKoejcWLy7SHfH2i+lDF
	 qks8Mqdcji9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95146CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140679357.31060.10474146653970811847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c143cdd98665f53d9335129263113513af4a9cadbc90db753938ea608cce3acb
Date: Sat, 25 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761406793
