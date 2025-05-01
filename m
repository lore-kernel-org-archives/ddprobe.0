Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAD32D600
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746105594; cv=none; b=F64orpl0tozDRKH/P8zSvIo061FSCOnQo9ngBGNabF8MeENVqExYnLEyUiW2FRnv4czW/bDIKpIGDwtvTpEAf9Rt+jVEoyWa04MMKiHLfP4vq30olN9iiKqZ6IeRcHZh/x8jHTBm23GbR/fCNBlcBmeqNYY/cLZIXdPJ9jFSD4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746105594; c=relaxed/simple;
	bh=KrE+rzZkheGAEg6/c334nH1olVqvV1TUBlu30CRanMA=;
	h=To:Subject:From:Message-Id:Date; b=afhcQqObapUc47i0afqabYWAZH0zMa2C/ZD578m1ZrJTar3UpN5ppqk/TCO8ebJxCC4S5M/zF1sGF+p4o42Mxr1p9GEAiNVXGpuhBSQbG6fe5Cx9QNXt3ud50Fc48lhjwY1hioFTr8ZS2BWBnxEZd6e5iJLEuTds3OrgEzTp6yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWWU9dR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWWU9dR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746105593;
	bh=KrE+rzZkheGAEg6/c334nH1olVqvV1TUBlu30CRanMA=;
	h=To:Subject:From:Date:From;
	b=pWWU9dR4ZohYtjZY4N71cn6V/7QrrHQcjUpaQpPM9c+NL3OhpM6vWnLXp0gGAzQDM
	 haYjfUK7IJzobn9prPaoOyys+/ZrTXUt8BX+tZkZIuKOM0+DU7QwbKlUyT/JFU1TjY
	 v2DFLx3pJQxLW6GdPRwqJ3Vc9XcE41vcBfSBdbHOBuhRPFamaYdOyvBVWnf8rWxz7o
	 MR3EDwKEB06FLdzj0YhzEPgq4pAjL4HN0pJUk+iXIDChaoVS7Sm3BtOvEhQfw4Cp8r
	 6crgKoVcYZItNiw4/KHr6GHbeiJ6XIw5Y/aqAqAZacWlguQoW9jW8vdHCrBmzFU/9v
	 sl/WsMBMPZMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F194C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610559357.16887.4159182689297723341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10e24be29b082b918e3cced369c0025443e501c12342ab79c402b149a85292b
Date: Thu, 01 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746105593
