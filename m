Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667CD28C5B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787994634; cv=none; b=N9rsDwaYALvbsok6pOS5W5CSRqGbv9SY28G/8uvU58X7E6X7SL2YbRpPwVuqEx8fbppvHew+ojZaUHsghcGVfX8JyPEDekQs/b6FRgRGNtHSTdT0zqEQyItD3al4S1a8fI0BDShln1EAp5FGXL0GxX99jfGQN+G7hP5cUj6AO84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787994634; c=relaxed/simple;
	bh=66hv0mGYG8PP0DZjxNnuI3CbrWMg71kAJfuCxBlpky0=;
	h=To:Subject:From:Message-Id:Date; b=iWIIAK8moAn9M8LfEaweXywEhwScn9QdNveuffOeErW9fkbfN54z0pQ97D2XLRdwg5LPAzeN9lhh2fROG0YHELcOCV54+LaBEJiE7mn2ks7qnn8r8SpQRTVhdI3+fqz1A5hV5Q+vFqGHzvDGhK3GkoKE3jcs2+kf3hXJ0QmQbyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p191gCu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p191gCu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC18C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787994633;
	bh=66hv0mGYG8PP0DZjxNnuI3CbrWMg71kAJfuCxBlpky0=;
	h=To:Subject:From:Date:From;
	b=p191gCu6l3sIBwFPMFJkCz3n5ERE47RBMsPObN2PwU9KI8nPRsmxtw2mzDayWUbc9
	 pCBH8i1Gu3SyT8tmWbXFLcvg3JsWqSAVl2pIT3w5Y1LqZKY5fQIOyK9TOBB71mCU+N
	 QvXg2g1TSpsxcv0NNQz2atGFis3DSEsUGSNuVGR0sMmmXgXsAZom0yeW8n6kn412Ak
	 CHDe561EeC52P8QKUR+CFMNFoR6tN1aP+zfeOspbI3FHO3Wh+0zOhnbn3/jZ/zNexR
	 wDaKDBHK7Tn6Vl6myqDSe6JSVHMLdN8PWoqlTXUZ0+YZFociwrFieExu937xwvzC0V
	 NbMZMK2Ua2+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B426CC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799463369.3833.14340138023456730546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa969ad74c41cc233599d08b2d5fee7b546f02e557342b2763f9886ba98836e
Date: Sat, 29 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787994633
