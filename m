Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F6513AD1C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749938394; cv=none; b=uTt//uvLMiwR7EM4OeGupOhsoUIfA3YgFWBVLGBc0IY8rUP6I1dBimh2jP2PejFK+1VJZk4jNGZCHCHbfbf6WhAcMgDCCVGMSAvJd+BRSCQ2I+8XXJM2ZFoDj0kru9wwZAubfKZoPiSsxlesy0dDlgedx3sqftpnbpBfvlUSAXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749938394; c=relaxed/simple;
	bh=tgddOtZy9LDXGL5+Ru/Q5QAuqvopGewoVNMKqMR/tNI=;
	h=To:Subject:From:Message-Id:Date; b=axW6KbY7d45D2VrtfRS1/R7VhUBDAW6QVm0whIZweNIdnNtLSkR7AA+DoCqFoWSgkHhbB/oXUSv5kijsL1ys3iq7A7kKBYWhwrUFY3A6toiifHAOUlOX01KNcbYZleye3PvcytyY/ygGrf/g9x6l2kSJ5TuPuS3yVTb9zGuV8Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSqmF+Ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSqmF+Ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA622C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749938393;
	bh=tgddOtZy9LDXGL5+Ru/Q5QAuqvopGewoVNMKqMR/tNI=;
	h=To:Subject:From:Date:From;
	b=GSqmF+TiXKKg9ALPxnYfghIw2+9QzVyJs1ubjdABi3vz/n1rjtcmAt3QuAe2iBUIN
	 eaKaU4CV2Yr8MJGqWl00v+ETfi8LTEbSrbQqAd7f/Yq+YlzccuRouUvJjeL8y3N6rO
	 N/VhB9CH9Zf5gbJlgQRBBAl+s+97f3yzfMJDxW5JK8Ke7lDJHd5zbQ56FMcY+g6akL
	 t+CCWbOdG26e9nvwyVO4CBoIFL0kD09Xvd3+W3+XbCSEH/KvgXXUKKDK9wzgOYYuxd
	 8TNJW/7VhIKqHd+ve0d9YFtKnS5z1PeoBNaOVTz0Z/P/tlLHM9HT7R4xUjvbqY4Nax
	 joUvB54mnI1aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F2C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993839357.8361.15068581136751843120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ec01f81c2a32ee6fc8c2ed8c299ded47332a112a1e103fa223a92b83a15c2f
Date: Sat, 14 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749938393
