Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C3823EAB7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770490434; cv=none; b=f1fRr2WYYKxATUeAkgC60oeku6IhwKtdsjQOBUWMhNfTRD0L5U2lDOV0hX26LO1TOHnwI6/dFtRZ9TeE1fp8HJBR2Wk+1m7VecuYxTnBFzTZyYM8+ZPo7qrG9hO5NXchdg/cFRs6BEIGGKSyhmSd+BYOm3IlWXs5mCLrkj4qEVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770490434; c=relaxed/simple;
	bh=5vk7VsLfuunyKG38i/B5/IOjm2LF+fdqdPC7r97VG7M=;
	h=To:Subject:From:Message-Id:Date; b=EbCN+Ghd3DYq6VEJC0Qo/P2Rj3dxxHMfk/aBoY71fc0CeuNZTSP0O2FNIX9Rjm0mmhqKHE5P6gdXjW6Pgnid04baojTcRFn43ieXOqGKaOoistCzWHSaribinhZJy6cdm+lA4God3ynCnZ7rXBsa27u2fIlbq67uCeLeldnmBu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OD6qMj9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OD6qMj9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90D3C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770490433;
	bh=5vk7VsLfuunyKG38i/B5/IOjm2LF+fdqdPC7r97VG7M=;
	h=To:Subject:From:Date:From;
	b=OD6qMj9UtBPLOG13XgkZxaWk+/UsGnBgGKJCV1sJbmbtGxhIOPGYyv9GBV/Tf/vSy
	 /oV+gVAfsnCOkpOLd0jx9fIE9UCvre3fuuJylULMrICYRvNk/cAZ+OdFpHNQc0LG9R
	 kaa99s3PbSq8BRoRn61e/sjPm9q6YhLig7QFL3k/T933LrSzt91zr89S4oAem5jff4
	 Zx0NUpKHoLe1uAcApO3FkWaMbsJHf3e+Mdh7jyApjlMoq8YJp7MEBpo3VR6pbiz843
	 1AU0m0gsr+vf0yNVXswqENi99Tki4fiROdfT1Swh4dLHUDi4um6f2Nu0HsPEjdTlY+
	 P7ctW4uWTF/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D77EE0AF3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049043358.11529.18438952402430547059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6561f3a0f4893ab04dabd9e99fb5b0577e7f2cf8b783bd1e9b087256eb417bfe
Date: Sat, 07 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770490433
