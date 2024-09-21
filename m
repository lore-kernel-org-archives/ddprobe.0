Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308ED1F957
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726945554; cv=none; b=pozsdKF5CrDDc0t+WmpN0SeoocDqo0kBQkPs/wibcil+uw54brg2QbtcmMbPhy+osH5c1Y+wcyN0TQ5/BZpOMbRt5oDbWh/iFe6MOQYVFSBxlnxJR1tBUBqt9MZyu8DKWe1w25wt+qN1qr2W4tx24jJlV1tIHTwspy1yUakiSpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726945554; c=relaxed/simple;
	bh=RM947J/wLLbfNFkb2tEP3EuisDxCG1i2TlEniU57KLQ=;
	h=To:Subject:From:Message-Id:Date; b=So+SoJSpXBXRa3bqDJ5V8ZivwkStN9ojiQK4lGK+GLGZzLrB4Moi56TGQdfE18gElElaSOYC3RF2yJuPzWF/co5pANImTWvG6dYUiA3rKVIzDu5cS2JjUiRLU8OEV0234qQb4hAD4odQOnz3Qdwh7oDyX8K6w+Y9OqCZeEoTuN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rL/rpCnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rL/rpCnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D3CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726945553;
	bh=RM947J/wLLbfNFkb2tEP3EuisDxCG1i2TlEniU57KLQ=;
	h=To:Subject:From:Date:From;
	b=rL/rpCnUM0hRiG5xqFT4+OtT3T6BFw52AbGQwt5J5g80CSoRrikClGHmwdhUBpSTE
	 WEJ08XynRXgl7YKTKRbgIhnVks8RqUKtxS4nNAjtxPUfbiF2fTVXeXSqnU6TJO28mK
	 p/LZWA5fFGNbmYuazZ7gF+iAbitm7l8s9t4A/7JI7xvWPQEVYZs4wxl9i1RmJD68C4
	 +z9LtWfITGBBrX6mAfrq5Uc0ae4Dd/BfjvvQOGudxxmx3JNxWqjdzMTqCnzN13y4Rr
	 2J0jZhDNizdfxYoVvYpo8rwGRlW93U0fQ9xjMqZoDKHCWeKh/i1CQIBStb34KPhjAV
	 Dn1NQRwmdkvKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90341CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694555358.19001.17142175626935782806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd522b36c164769428e49dc12e60932ed001dfad57465a242bfe94146893183
Date: Sat, 21 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726945553
