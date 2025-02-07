Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BBD71747
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738961154; cv=none; b=LeOY9KJ2PxCBr+JLXgdDcI6SJi2hzouDNZibPWcfpQQbwWx0loAZMU969xKJDNF8sImslurT9Ou1U0Uixq90s3CyEtguxpjB0Q3oVE26PLlVtOzB6S1rSFpXDxnaCZoKMiTNBoNdcd7u2fpcM97L9Egr3lsb3PoATWDfbE+Dh58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738961154; c=relaxed/simple;
	bh=seRs99lvTm3ySZ6Pjn3qE5XPbOLSJoEv27mSPhAveKY=;
	h=To:Subject:From:Message-Id:Date; b=gAJQ5PzjHPrfcHT56Ox9axqZEDfx/D324OB0EADvz+ScNDsbV/JddKssmaOFiDYJF2HI9uFWzFLRHeauwcU0RfVMZTlNzNeSQovtCQWK1cKIr+cbqfTDOxQ5KzYjyt4IQOWmi1dDrKsJSom+K/0J5A01NeziNPhDM2tB8Ry9StY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDRsNA4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDRsNA4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE80C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738961153;
	bh=seRs99lvTm3ySZ6Pjn3qE5XPbOLSJoEv27mSPhAveKY=;
	h=To:Subject:From:Date:From;
	b=QDRsNA4FFQ5mUzYE4YYWC9VPvc8oefhue8ESQ7n/OnD6nQbRFrkAsf45O0Jen/MLB
	 dMrNnNSE2K0dd8zQrUXO4+1ZaGVUQkJ6LVumVLyo7AUqPf2NHpwQUfFsQV/Y3yggwR
	 P3rbU36FGpj7iIsnU8aEkM4FlVAyWBwQjQyqU5EOp+Z14xGK4MXWQOA988PUHYXLbW
	 +8d9XZgI60yG128WoWoABejeQOUwT0ydkb8nnBvVj/H5pg6M37ySrplP+rB4UPtRg/
	 p23WyT06rMWvJa7h1+Twq3PoC91zzk8QmnG7jrAYY8v7kYf3j85cgvJHBCZgRw/4sX
	 J7qtlM4wgViqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59A3C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896115363.7988.17510442825761208673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c928ca65ebe65eaaec3aeca112012a13a6e785a0db012cfc363231fe67922b71
Date: Fri, 07 Feb 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738961153
