Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327061519AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744985394; cv=none; b=PoZm9uzXrR3JjH3PiMk8l+tnSXPKhKntoBI0ve1xD4GgH0TXz/nQ4UIkP7pN7XGjcJiynHZGmzLxLCIlJRwlJumtPCLsYWG+VZmepKL0gejiZdZO9WCBc6FPVh/c1rIuI3vYDKXVByV4AmTUgiTanOzi+uyS7mI1XwlEbK3F/yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744985394; c=relaxed/simple;
	bh=KQnrAD13Fxr2f0oTxdiVxDh2IFlhgKHO79m+U7vai08=;
	h=To:Subject:From:Message-Id:Date; b=VzUweFNfuH8JJ1XhCGgs8vjTlQ3dTSluuvSZOjtbt3ysQJiA4UbSViSDy3nCiSoZZtL/DUk2nkC9FReDW4Cp8DWmWiixQJ/tW/ie+OIzy9tZujuvrsSlkPQaZeHPdOwgynIWna4DUrCrCrwGSM740AkRwD5YW02RAc2y8ilvIz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+8pVG+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+8pVG+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8CEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744985393;
	bh=KQnrAD13Fxr2f0oTxdiVxDh2IFlhgKHO79m+U7vai08=;
	h=To:Subject:From:Date:From;
	b=N+8pVG+ovz25Y8z7SN3Ij0t7xxNK9YK2CRHiMiS17Qe8qo40NE19LJNoa/fDYVWBd
	 5wN8ST1aZm6Gao/SDxa/uNnlywDSHvUR8psG6O4HA7XfVFsCQIHGNPOQGZIB5RqGtx
	 j0o2tHXDeYFsjWDvFJ+myw+KuwmD/VPsUPphJS3FKeQGYQpWA6fyVuq21PwrcchSNt
	 exreO9G69Qa+89K1Y4i8GNRAtAFCHYhzinJbEOI4klR4/lKN+WjNYbosZp+uRijYVM
	 VtQPiWZJvFuCCXsEBSfXAGchNOfuxj25Cp5g2ZOWT3E70NR+5fXfuLnCqS9NIMH0E+
	 HRoKt7JUW1Jmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CAEC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498539359.12711.16769578197550925125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7be86f9b2d0161fd162b2eca34fd5924f2227de24b15498b9e289a234a6ee2
Date: Fri, 18 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744985393
