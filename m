Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D514AEE0
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753909194; cv=none; b=h6eun/oWPATYBSHxZc+Nh7tqkpi7HrSRzTfapjXpVef+GiOprcEuxmyEsyhw3Bn5GSNTqXTQlte+0PBaRKs98EYEZHuqjeLfs5J5LJMeRfPWqYkYv0XqW19bf3gCZ3L9YIX8uaL/JwWbBCrqSgFP/PDeKExecruxtmCNBVv/wn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753909194; c=relaxed/simple;
	bh=sgUd31WV5T3XGbiuMJajkGv2Ag90k57YYUOk9cHRc6c=;
	h=To:Subject:From:Message-Id:Date; b=OdRpr5rebWI9wb3f4EF+hb4ldWCqycBLpA+HJ7t5pe8CZEH3iF2tlP/geMlU7iaLIkn20xUAxhoU18GOIihaeaEE8e9b7wT/FS3aSObqK1ufpwhNuLB0o10pHkrCBQISUrR3aYnBlmL2ALkgTJT2mFOmf0o0M2Iz7HM5CYoIe2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaRsHGUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaRsHGUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1998C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753909193;
	bh=sgUd31WV5T3XGbiuMJajkGv2Ag90k57YYUOk9cHRc6c=;
	h=To:Subject:From:Date:From;
	b=oaRsHGUqX2HpVIcpeCwTKajnis0PzNXvOBHEiHZ0pFi2j5z2H5VdRKX+XEaR9v3Tj
	 fEUmvLFfdvJPcFoVxrOKXgtJ/M7t0OZD117UtWsHhu30RRPU2JkL+0Ywyu40M/IQr6
	 ajVw7sEPDpju/s2Hg0jzybIMGRE2abZ6mftxSPXoROoDCwWuVb78bD4OI6OqKHF3S2
	 Zh2bUPwX+f2jwigC5PpT1kmN+64IwNBvrvc1C84v4HvHGaepvBk5xXuChxmkpGMG9/
	 6XsripF6AAXIJqFZENPVogtdoV+stq7EmdQPZd2kLp8l7fAyz1M6j+7Y5NnyicGyMk
	 EPsnMW2ZiBWXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC47C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390919357.1340.4573089701611493353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e140df1ff430bdb90e4a99fc3ae63722172df348a91890aaabb39984248d66
Date: Wed, 30 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753909193
