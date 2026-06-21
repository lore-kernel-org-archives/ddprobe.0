Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3D92D9796
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782011794; cv=none; b=lZ4jRSCrxU2xUu/GPW33ChvFjf6hLBjQIWqPyQYBXKjHNivVVLTvSpNLp22xe9+wsNsZZNAFH+jQGiqMTvahWhJAoe2vxIT36UNDSHMltKzD+V6VasEYz7lkTYzeC5m8b9Gh8PyMt1jh2RZnNdTjwm0JXUr5/8e6KSJkzcxId9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782011794; c=relaxed/simple;
	bh=sYJDdEMRszpahDzFVsXnGne49zS/lThbf8y2kNjpcAA=;
	h=To:Subject:From:Message-Id:Date; b=l0Yywp1LpmPSV14YaCjXVkiPkC2gp4gB8KJwnqrGKkuGeeQf9VANFd21G3/jf38VtzlSHXqnbAkDxrqDFm6gxyKTkrS2qm9rkc4tgc5cbNPJKrLSwB0MHcnxWmsTj0k73FmcLLqDzB0IwyBW1ov7SoV9dK3T/KCaTXnvDfmmoM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBg+4Id7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBg+4Id7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAB6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782011793;
	bh=sYJDdEMRszpahDzFVsXnGne49zS/lThbf8y2kNjpcAA=;
	h=To:Subject:From:Date:From;
	b=YBg+4Id7WZjAA+O5wd5s27j3u8NHWKEnuNmWK9VAMxQRFhSIaKE0er9Hv2etJQK5Z
	 NcJHMGB4Nn5uCiHdi5dV3Gu+Ofv8eB8wFEN/51+RAsfROcxrvKmEQ5ccxoyGvTB8Gf
	 7lS4O0aBr7MOuu9Xspi1QI0wZvy2fgGZ5YsQPw79ts2P22fY2P4rke7otYxO2BrbmT
	 WH6pq6AlkrlY5M68Vfc4p/d4b14F13PF1HJbmFXt7npxI34ITK4iIwPRkjTlGS41bY
	 7Ir7GH+PmeCeqYmil9BkM5AQ7HX+K3j2fZ/u+GnfFR6HQey7QYSI551K0DX8ajdJE5
	 j0JRlfPuVvsTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7327CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201179371.11125.6993342416246662361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd96c203a68af88644578f673f4418c260a4d350a30ec7cacd67fce1491c825
Date: Sun, 21 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782011793
