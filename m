Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC3F28B7C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749547794; cv=none; b=Z0hLqWluiojW6FzRkdJ9WvwQjMkWigBJUVFXF8n6pZFqCFYSJwDABAMnNnTwRLpVgFogwEQUMMLB3zdm+fG8VWhMZS3bqy++YTFLSJMArOk/gdQyjvE/ViL6yQuL6Xi9bD4XuewXVZD6bQigEInFAoq/pxrxKkRigiDkK+FZaOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749547794; c=relaxed/simple;
	bh=Cwu4mpfYzl7GAI3UgdJWU3vx203pZs/ZeEHNgS+y9oU=;
	h=To:Subject:From:Message-Id:Date; b=EPh5610ljuJKa34TdMhb1t1Lcga90S5ZkASP9sKkK4/27E352he2j9KXzWZm/G3/fAYUbYiob0lLofMYblI4Ao/cCn9Kef0eEDpI2KK/EpXN/sZQmLZWDqlQTKnfhvNS4xcXiSPFCi/XqgY0S0LyqepJBk4PwvDxgFUKUywL7ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wp63teeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wp63teeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A068AC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749547793;
	bh=Cwu4mpfYzl7GAI3UgdJWU3vx203pZs/ZeEHNgS+y9oU=;
	h=To:Subject:From:Date:From;
	b=Wp63teeAvNMjuNnsOIDmdogpZlV0e2nvFmiKmkfQp23UsU2epnfLeJIVSPOGUpxyF
	 buD/HtQUvU9vMapELfeweSNEJp7tUPVE/kYUHPLFxvUbauJof9OCM58z5CuOs5XlWT
	 KHQxwdewfUiN4wurXJeY51IcuQdU3iFgSBnWEC0JpmhHfktuNoEH2sPZmK+TWmqT3/
	 QkvjFI6d5oBbH4+j1oQnS+XTFETQru1EGxsxriaaxK2S2SAf+fVK9Sa34uhiXqN7B+
	 adamfwTn4jofwboWXBAHDXSEC1+VkF5XVN4tp4ynHElvcAT2CVLBk3dCBD1njfv55Y
	 e5i48ZdG0KifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F117C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954779357.8506.18358985748367956752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94100dc8ccc9da74e8de8b8d5c831b90af5fcac8148ed6618670d2bcad2be13
Date: Tue, 10 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749547793
