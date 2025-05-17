Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BC9B67A
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747442994; cv=none; b=USOz4YdAFlC8PsLpjJCpepsNeoQ+6nGi1WETiYn4Km3+nuN/IXTBqV/ocWftBicEiYcw7i2FaIYISvu+wYndtsXi6vkqTTPHpBqCCmi1oghPiZIS4+AigRteyrSInhd18h2CvnCyPaYvmc3VB4aNuyQlC/Fzyy1dEhl/kkIsfZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747442994; c=relaxed/simple;
	bh=oDwDdkEtCu2OT0e14CpMKkejIkoqCM8yNdOmEkuSTyg=;
	h=To:Subject:From:Message-Id:Date; b=a7XkV8wrSKaIUn6Uc3QzC9lMe5LcX1PB5z57XiTWQznNllO/tSXR971c5dJ5g6v2XU6Mo0rxWoQ9BAUXjb+N9urPdHnYvJglERySpjj6MWvxmnZd4NTTDIYQ7ouyQAMHDYyPuEmsljkPc0UgXdJG+lwes3YItRjdMBKAlU/1ECc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk6NHrFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk6NHrFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11E6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747442993;
	bh=oDwDdkEtCu2OT0e14CpMKkejIkoqCM8yNdOmEkuSTyg=;
	h=To:Subject:From:Date:From;
	b=Sk6NHrFoapM5sNQ58cROn//dsh+HmNPXfpobpdvRYLZqxTmEv9Qs7feVHKnD8zTdy
	 xgXDJdTK3AVSzcrHGIEEbiKgMHVHr0FOM1d8vw22hTUy9JP9pDUp+up1dS6X0TFBIl
	 lbBTBG/eqDx1qiSHR7WetORlAaoFqnzMzRiKld5vXGlGQ5qWKXIyPVr1yuZHdmJX8t
	 +qDZMu6DfKOrqNHAD+UuMacZ8VJmSVVcXKaUqeW55BkEAM3Xem/bdNLwfe6BlBYMzv
	 +l2mUMOCbDs60GhR5MSwVJEQ0h6x9+zHoqxAeYrCTRfWFKRDYc+4jWb1xhxcpLDwyo
	 ruV2IiX7WyP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D9C3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744299357.26713.3535246570542032193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d607bdcdad5053d018dd615465c2241f0b1dc29515d9373cfd8502e70607fe5
Date: Sat, 17 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747442993
