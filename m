Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE1C215F5D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736416554; cv=none; b=aGw8fzauGZGoyJkrfeX6+vJ5BTQGJ/xkD12pf448f5EgIMZ5uIpjC+tCeOhxNLn1YU0JbzS0GjD4GocjowR9xYQMnFEk+AFC1yMcE5MCZHJACXXV8KPb7dZIT2D+5pDljYnxovwr9HzNrIAD2fuAHhqCVcZdtigdaa9p5UmlKn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736416554; c=relaxed/simple;
	bh=jB8cbreL2vdIZ2OfPLVFXI1Q8jm4pL9zwEkMw6NBDFA=;
	h=To:Subject:From:Message-Id:Date; b=R5KSmDJEAaD1gWVvhsGRh60Sc/VfpG2orMnxiPw9cYKwNceRiJR7zSIZ2Jw/wpwYiHxJ+lkoB+/D2y+fqR5o9jPybbgpgWssw57AFbFqFyj7E4c7EoIfoxA94TtnsT6DkEbTiS+Ta9rRUMgntfPPiHMrZ1XtYrDip4GwG6Ekr5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekeAGfus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekeAGfus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F28C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736416553;
	bh=jB8cbreL2vdIZ2OfPLVFXI1Q8jm4pL9zwEkMw6NBDFA=;
	h=To:Subject:From:Date:From;
	b=ekeAGfusyJo+LEVyI1/N5G92LWp7EmlfrJDpZxqYW5oG8xEq16d6wCE2V0yG0lk7H
	 GZHWEGxCT4mJ74u+FA/ycs0+MWJjLOhw1uCpr70CfzUCP7eU3ymObJhfRx8Y2fDihH
	 Tc9MLcpDrfAtnyJhNhV3lhOFD0R9Y+JbxsPSr79N/1zG4cNVlMp6EtupYXcdRDcKMN
	 16LJeKogD3TLkWziFaPaZIUk/1uMhl0beqZiJYtIitzFbrzr8TW3qVRU0AVySFrTMq
	 ze0p9MXwBmE1R4SfiLItYouScV0dS5hp3gIXfcOS+PU9rklMUenw/PMDHahoq5xwGW
	 CAx7jKS7cUwfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93365E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641655359.12270.17730476586894379397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8c14d425ac95318bc6c23cf60b60462ddecba447d6d22f29f162ebe4b073a7
Date: Thu, 09 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736416553
