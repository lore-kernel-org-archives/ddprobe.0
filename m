Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601642374B
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 11:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppuygxUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C16C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697456828;
	bh=Mu12jNXmYE/OovJQlNGcDCsAhn8PT4MEYvznDpQsbEE=;
	h=To:Subject:From:Date:From;
	b=ppuygxUczFoFvZlXP9YIkGUBOo6/KsWKKtlnlfIjTzQyyr0bVxFjkAgHlbDoZTgCB
	 LnWnxq1v1DGoVW3Rj4BfO0DU2IlY5xKGxF+Q3Shri3A5Pv3P7sTjwWqm/brvpb+vLC
	 rv2j1HNfi8rfX2MZpg/a+I6xroYvlIp2aQfujRodNTsmB5uOsyCwCRyXablhOXSstc
	 jQiFU3PMQU46mUYgPiZStjFuR/lnCHY5nyoLZCGPz29jZUcdEYBpQfkLjlWvA4daML
	 2yb/h08gaXd8ttRElUc3t0hT3whkiRksOEwo9dQMITEAiryPWxql6S5K7kuZyopHxf
	 GpQ+ri/Fg2I1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6FCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169745682868.934.17243711558922291679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0206bd287679b9b3920df0096daa07f2bb15e1a68cfdbc62e10835c4245bd23
Date: Mon, 16 Oct 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697456828
