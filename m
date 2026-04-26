Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A18A26B764
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777224454; cv=none; b=J5g+ykqEyrFXGSJpVQaXKu5avSjZTGASeWLoorcaRDFJ0yYwAjOuP0BhQNGqYF2bXy80m9AF9HKQTgRLLfAKN+6QtzjvMnAK0isux9Ymz8H/Omfq49CEj9UoQ+NK3aA3IInzjBSXNyQRk1ReLxr6RQMD4IH5q/2x2KJdfaafSOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777224454; c=relaxed/simple;
	bh=B2lN4T+u6yG7Z98p9cuiDcO//rPfKkJ8GhsBHCIyaUA=;
	h=To:Subject:From:Message-Id:Date; b=Qs2e2wspX9r/FZQAPhJ5OSCsM67OFMnuVz7CoqLPhg6L20TuiJyCX51MwxiX/itSzHFv4MhqPPcvcv8BM0GrMJ9iBVHYyX7+UhtB1isfp8la4HrQO8DIDCUCYrV2t1zLN1WMiri5OkQMp6nbvZI+xKDWyjwwmQcu5/nugvfqUdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQojB+5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQojB+5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF67AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777224453;
	bh=B2lN4T+u6yG7Z98p9cuiDcO//rPfKkJ8GhsBHCIyaUA=;
	h=To:Subject:From:Date:From;
	b=nQojB+5LKX7vQENWxPXWICv0mCDf6rUMBgwqUJyj0gKyNzwThjzNFAlxT7Y0o6bTB
	 azyh+fSKcTJtuRMoLNV5wC2p6HAXlRQV0hy3csOKbWcjQAcQ005Es57Kz8Czb5ev1b
	 w5wh0V3KToyO9mVDprpFO6lPqQQdsxN7htzvCYF6+P7rmK5MS5Cx+Ddt6PObx59UJG
	 MUrcBuQRc2k6pKB8p6Lh4Yr5pAy9i2Y1gmA4oK2xu+Dzmtw6pPZrSXDTgVYQNQLh/f
	 NYwJ/kBMjm3BEFddcAON/b71FgKnrj/qUXkB+AT4hV6JnR4hSJ4YRAG5NpjsHtZLux
	 zdJ+1Io1inLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADECFFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722445369.10978.1448313532193855919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef416cfe17a723f619c8c02080e5ccb237532be28c3781e64f1ecb39e067188
Date: Sun, 26 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777224453
