Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE74536682E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769795634; cv=none; b=RDXeIJZwHqX96PSc5fbN0FXDvkRQ+9y22HnJDlP9g/R7+C3U9wWtFZQKVHSC4+QSkIaXtXya4X7TCiDxRqnmwRNSZN8fTJubLI0GO04l0vruvmhH79nXHgHMnti+PwwUeheSR/zDiwv6EE2z9cYC0UZTpH3N/gYhEDAva2kVuqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769795634; c=relaxed/simple;
	bh=wy/ohRLPix/coMOaD4nhbm4uBzCaU0S6BCRVQT/mE04=;
	h=To:Subject:From:Message-Id:Date; b=PNONCspaYFM6K3iVFGk/hmE5Ca9j/EbYN8rhuaSEtjdFCmMkJUxkYUGf5msqwewkeKmvHHghHRuSlACD/J0gqQW+FxN1iCrv0AwPXG8OCUEnK0/PykU6Th7dYC8TmlqI9iRdJiwSLRIyrCl/RM0d+E1VH6cvIjjvIuKPUy0oo+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3ZwsMJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3ZwsMJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F491C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769795633;
	bh=wy/ohRLPix/coMOaD4nhbm4uBzCaU0S6BCRVQT/mE04=;
	h=To:Subject:From:Date:From;
	b=H3ZwsMJYLdxzsH1N5gvwxlcaG1LiiR3A3TyvttkDf/WPPSDPO9qGuuVRcysRlNzKR
	 8wOwrbiwPdsglqCi0r0W6WTTAbmBvFgDR5aMemEsZcSJ5/fvf7+pXW5DH1vSoG6lxJ
	 2mTgNJERiE4I5W3ZuPcijBBUQY1XvZQmjvFqfqcYe6hKznjg5FhY8F2iFGgyU5ewoh
	 5PFpk2fuHYpiOjpoQ02csek8N4hAiMQKqy3Ajuoa/i54MnyzRWz/OltXqh8RS+HwSC
	 +KOUDnm9WIXdWftkUkAWhjsbSrlStTX+ocGCv522znTOI4lFCMV/aa+dQ4cQ4c8+i1
	 jP1A5GEoHF3tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB8E6BF2F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979563358.10956.5727540490576546470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e70ec05389b990af08410b53bdfb39d83bf0fdd021031ee19100b7eba2bed55
Date: Fri, 30 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769795633
