Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535211A239D
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739613534; cv=none; b=bWV9w+eFUKSX2SQs9Q5ZLAGGgb0dU05UiaB+DFU7rRgSJfJchDY8MDtUeGm+0jvGHim4PYuvprJb4PtchPprF5Ecv/Toij3iH4NHWQHEsGX911Bkt0ypQ8qAt5gImiY3mqGs4um6xlvYEhWksn7qbvtXnpuhnHlYS35yXULZlnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739613534; c=relaxed/simple;
	bh=zeJ17tZm8xZUI5cVfGWMb02zKSIZHG2wIc3nfSIa7ac=;
	h=To:Subject:From:Message-Id:Date; b=oKTj2+7HxfdP6j+a2cdrRzKaeGEBxRbOt7vAKX2rGXyAfKv0ITTbOQJW09FfAtzkX73xDwApDZgIQg1UTcF+8bsoCgQc3tG2SWNSniDeAHum4WFu0X8ioBryPzbw2eoxZXKurGllg912X1smp13cW8MTgvz+SVUYSauS6YVgKlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUqrQN+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUqrQN+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E0C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739613533;
	bh=zeJ17tZm8xZUI5cVfGWMb02zKSIZHG2wIc3nfSIa7ac=;
	h=To:Subject:From:Date:From;
	b=HUqrQN+ytVOXot8/bhwx4ywaVpUtgxQDeYG+xP7XIzCwLMFckMOOHZDjm8oFmELo8
	 Fxm1U8SqEr1pS4F0NZsYzuYCmsRaZyTNYWwwHiRbH0pTgtXGSiNOsFywFtMqHwClUi
	 1P5w1CE76Whq96yJGiJwA+BpmMxPWXXfvBTaZuiBuP2FtUD33pSuNTvrXdpEgojyGQ
	 E/uSCpFYKmPQVeBa/mh1CbrFsSHtFuZL1IW1yvdrLNl9Ar3aoCFoyVk534PGrEpPNz
	 iXkh6Ic0EHxQxVhewxRtBxNxKXeh/hx9mnhhil+m18A0CdZ2QhMkBMFDdMslzzWuxk
	 HmPJ2KmS03Ikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267AC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173961353359.30329.9993793580452238024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2178ba9d99bdb7807563445880d5e54f1e540caced809fbf93a980fa2e74d832
Date: Sat, 15 Feb 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739613533
