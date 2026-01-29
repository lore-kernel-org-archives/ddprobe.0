Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EE6369227
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769724234; cv=none; b=EhmTg3BabfYJ8FBECeUVONxk1+HGW8IkxpIIyqjB8vr46ElVU6USquoc7UseDcyTNEjjQ6lUg3/Oug6d8sCREQ9DXPhD/tIIRdAuWGoVJcMaEkfsP/N/+HEH1pAObhevkERj2PH/M8i3MOQV/nH//0GiKdXZTiA5Od/+z1Kc+7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769724234; c=relaxed/simple;
	bh=Amul0woryYAggKunb/pkyBybger2pU4echeFM7Ha/AM=;
	h=To:Subject:From:Message-Id:Date; b=Pf1bMY6M4vv/qHuWiat0rJZ0xNJrUwkeW5oxemKWaEiIdH4X6DMwNUAxxqMtr6mDZfaH+QcagEuzKeizDawnjBPu24t6L6j9lPS+wsPOrcQWSl1JYdbWupHLVIbjq7TGsKWYxN+Ch8QecqSyLnJPz9/BiWs6Uc+has6XOFAP/rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtGEPl32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtGEPl32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8A2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769724233;
	bh=Amul0woryYAggKunb/pkyBybger2pU4echeFM7Ha/AM=;
	h=To:Subject:From:Date:From;
	b=XtGEPl32yuLyNxO5RILjlqU2FMrV+qqjt8bO31wLFTecHj3ppD6WkjupH08FJF+N1
	 ufk5g1fH7NA6APt3mjNVTxKpCNP7tEnYOy2MGiPbMt9SbJCq8wLluB78ifYlxIVcPS
	 eYqXWExrpQ/OtFJIAMxeYR/FQ0/iA1YTfqYyXnkpPWQpWBHO8K3ydGDX3+HgVGEQ0T
	 7qpK1c1gHhfCaNADnpgc2RDLie6+qguoFR1YTHLDiigkKWTZ8R2LllXn32IeJHHc/i
	 plrDRlBEhmTWt4Gfs74p1jL0XdgtJwimzJVOLkiRY8mGvC9NyLZk8ynL+Mc8ysNJGx
	 HVpYTdWymQvPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90314D73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972423358.2816.13766916842047480069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df44dcacb841ba49f022e031ec2d38b793eaf337e1a599a63c5a8c67af46105
Date: Thu, 29 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769724233
