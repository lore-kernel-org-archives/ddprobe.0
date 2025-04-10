Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325F31E1C09
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744249794; cv=none; b=eTUoJ7+FwfxibXugyjLldQ3621EgF/oc55BMRy4chmNEp9/nlOiSDweyX/G/nb1yM7OmzDtKHALSGvdf/W1MU8W+7w7k7MnBlSqtIQHx9oJa1PKjR651h8i4tZIRg/W3/STJq81oCWS4AAmOk3dfCvCsYE52F8iZS0UTmPSvmSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744249794; c=relaxed/simple;
	bh=TXH41rhqUZYNRu+CjuULd4bOw5wMGLJbM30R6F29xCc=;
	h=To:Subject:From:Message-Id:Date; b=NxjmiRYRHga0dJ0b2/WcgcFrRb2wIcKhSQWUzK8r+WVCzP3aJL4kVCGIZZNTENu2mhOBSifQ0Bk9G8OKmPFE28q4ILhI0IMjmmUa5d7Uq5242qWn1kOD7gxOJN0htsnuHZTjrJndQ7R4Pu3sPn51oCFBjfFZExTcMyJg6IUlQe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6jW/1eh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6jW/1eh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8019C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744249793;
	bh=TXH41rhqUZYNRu+CjuULd4bOw5wMGLJbM30R6F29xCc=;
	h=To:Subject:From:Date:From;
	b=H6jW/1ehRXVvWl4/m3ql7EXFZty0teTtBe+GUdafX4nIocuu0cH0r6sDRk92c0PLF
	 NabVFruQXIHGQ8fYNrcSN8aGIvzSV31eSvZw+wucQxL7T8V/xnTQJrqaavXF08J92g
	 uWpDIX2xBxY32NGUCh9DVNYatyU5BoCQyC2g6kD9HJMg7ct/ojckXEi26FgcR4Rb0P
	 Ojpi2cea7E42FBoKaZ29lch1elVIxHkzLeNrR1iRnPX/9tHm5Or/mJHRPNsEcF0z5d
	 T5vU246P6cshpgOzLO/9u3GokbW5WqHyiJ+1LW7OurYtG1IWe58l/9H5WQXRvx2W9O
	 l6+M/fiMNfSYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275AC369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424979359.307.17155010630056067055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbef9ce07d4f4ce042a8b6b1be1ca0e4f7f57685ae85ad59878acabfa256d3ef
Date: Thu, 10 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744249793
