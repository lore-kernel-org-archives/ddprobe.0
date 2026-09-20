Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4241F2475CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789931434; cv=none; b=jOm+PplRiz8GI1SK8QBDGFQ7x57+js41njPi/TgdypCEC8zHujVsV+t0akfhM+Jm6xY1sDHctawYo5ZrrYo9B/ut20xO4jmIgqw4oR7xQr3rSa3sdRcq2zwMwO9S1c0PfHuS+v6bhLFzK3mL5VdSeybSjILUaJEh9+5OApiT/5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789931434; c=relaxed/simple;
	bh=FjBUoIJG34xOPUR2bRMgKhAZH2EKfbNxnL3zALt4Hak=;
	h=To:Subject:From:Message-Id:Date; b=AIr9CZ1VT+9ZD6Z1cCXFGGURheoU1/wa8KxEAoWJUWHWmB5UlrvEB2Yi1kZ99AWFoBhqdLF97xYworSOn/Yas93ulmDiky8PXIx1or7hLn7SryVCZIrsYTULRVYN9gBdE913QQLNADd+uF3NSXgq0JFmyrb9GPqHvtpwduuuC6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/oSOBVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/oSOBVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA7C0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789931434;
	bh=FjBUoIJG34xOPUR2bRMgKhAZH2EKfbNxnL3zALt4Hak=;
	h=To:Subject:From:Date:From;
	b=I/oSOBVbHXo/WN35oJxYGh3+icMahHSxv9aqNcjbt9y51Zy+EWP1bVgAPiWFp6Bn0
	 GpQCSktLouusVZyDwfqIYdGLLMLQMTP9apG2bJjjaVA1XZt+wKeRoDqswPUVv3yncq
	 Wsl3a5bjnbxKQx8gJDH1SzRG09WvyGwxzYaq0A3VjeCU/1HOyl2pqMB/mRIo2uZdYj
	 w1LwJQ8AcXrHiP4Osrn4+ErgU+dtefNnr+YKicpsHoonRtZjixCCuUXO+j5Rg95/Of
	 w3mW5nnZtZngp6aAkW5KKNlCNHG+bNrgAfWNF8n78c9d5mNKPA7HPvh8c20PelCjf3
	 8fP92MBV0NybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB9C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993143368.28559.7421530588158330491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632f3ef1423230200520ed47605cfd4a0be659c387da184215d4c5a0be3f6120
Date: Sun, 20 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789931433
