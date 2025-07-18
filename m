Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454D5171CD
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752801594; cv=none; b=GZTlSybgIXinSCeE+LMAzsbHvV4g5SIXIVMw5+oQxKupGMrTapU5N6/fvvfVak66JVIljzOwf+FLb8xz+4VXe+REYcCbHXSNTPsyb3EQTGAvpj+EqzO7SIRXfHcamOH+NMEnt/OWK90N32rIG+tbAgUDVKXYeLYAoYGo1wtVu8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752801594; c=relaxed/simple;
	bh=0r3VaQDUtisgeyHbQykMe4yCu+/md5Yo+Lpp/o/E0lA=;
	h=To:Subject:From:Message-Id:Date; b=KadOqbKbT5/3y45qUq4Hc8OMErlY5gcVh4d8VRQyycCjgWlV63cTn+Swj1tGtGCMfY3T3v7EkSy5HutLTWLBsxUZzWcpQ7i4+PQPTjpLrveC/V5L9fRXc5z50pk/ijPx3J60QlqBQvUFI5MB94hrZapJsGfJ7uqya5oBQeOO4uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbIEKU4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbIEKU4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB879C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752801593;
	bh=0r3VaQDUtisgeyHbQykMe4yCu+/md5Yo+Lpp/o/E0lA=;
	h=To:Subject:From:Date:From;
	b=VbIEKU4UDsM0AsS9UP6G5CvMS+T9NnN6hJ/pktW2kfxDV8bW8f22Me25qDIwD4euQ
	 1Dph0RVdaqnl6jKJfb0jFelvqIw5pQae8pr5LFIkD81Lehq1CsybblqpHbBz87lkAk
	 HDKl2jtXMRh1QlVTlCYEPGLIEGVyS5CrvuQOkBNUl8UG3V8Ug43TUS4VXQWRQd+KXa
	 g/37eNfocCQbUjCbgmS1dr5aqVQicH4f+irH2FdG2zKnKymKugxXtELic6mnHQiahg
	 6Joz3eZUF04oJCJPl92h9BGIVpNGp/AUnCdk7tnKEpSYjv/3NBCWTf2tYqyvol60rq
	 QcyZseGuw+6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BEC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280159358.24946.13743267124531290079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a83752e5feaf5d8aca260a2073055ee80496a07cec8345c6043f3f53f4e4d4
Date: Fri, 18 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752801593
