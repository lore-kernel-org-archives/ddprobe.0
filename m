Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A308D15B0EC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778339854; cv=none; b=OpIvW1TEKr4E19Qbq6xMUZGmitz9UIqLs4JWI/VAgwox41NxDhVsrSgAZdqCYXepDQPCl/fS2413KO4a3Ii8dIOK7E1Uz+8q00gFGsSY6Vomn/ffHVVbD0EtUaMtAq42P0YmDLuS9ZUSYAepHa2Zr4U0oXjZVcTuRLKc0T8ync8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778339854; c=relaxed/simple;
	bh=GSHlUGJBvscncdUe4K75/cIPVlwNsWcSwOKD5hMRPdk=;
	h=To:Subject:From:Message-Id:Date; b=ticmsGL6rRXEgIkybQ8XaV1pItB++D29zH9bHl3RfadOGSQyONOreeWiB1jkfRdRkrJRanUVQy/E5UAomeV598YG4QJpEEdsuLpFbZ+kPPxecxPKtxaacYUSVqBQgv2KGkMQjj1pSGAZycVkgotbQIiAjQFB1gTem8Lte0zOq6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riEka8k4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riEka8k4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3FC71C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778339854;
	bh=GSHlUGJBvscncdUe4K75/cIPVlwNsWcSwOKD5hMRPdk=;
	h=To:Subject:From:Date:From;
	b=riEka8k45ZH6A/6RjBIHrK1v6qVgaeer3NAURL/JTtULH8U5/9jQ8XFjazruqYPsb
	 yk2paBVEkkuavPuYJt8G3x4D5H8ejRzQp/mDPgjQco6Aa7Wdnf+8/Gn+/TzATILwbG
	 ADW3jxCMdMdV7RZeqf9YqfxuY2SGCnZpBFd5g+27v/XR51S0azDcwMcgAf3+U1f3tC
	 UkuutDPNSRgoTi98Pu8YxZd8uhycnsXlZxQBty7k0QkKLObGyLKwCjol5Ij0UyNWfm
	 5n6gC0UE7c9iieonS+i0+Jt6EchM3pBHLd/iGhFG4fV55QWC7UaGGj6L5Sfnu7ueQJ
	 yJoeE1wEhrDPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00B61CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833985392.14768.15299852797916045340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecbf62ad4636ef700c6d677d124ae69ca0124c8f8f25794877735150eb858e5c
Date: Sat, 09 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778339853
