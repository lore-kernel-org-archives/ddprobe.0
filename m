Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAADC2FF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775448334; cv=none; b=E3ACKlnXhhWfjuDQhfKEgBQY07mW2GAosIp4Sxt3pO6IGuyFmEh3+n5P72yh2ozf4H9aGGBrGxQYjJDGP+En02IhkOCEJBLpARAKODcDWIkO3ctgLyL3suwgri4IH4w+3i2tLNZAYV7sPG2UxHN/OusWqV//9oYOh/pXYfh5EJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775448334; c=relaxed/simple;
	bh=UbnheIvD3CKiTPKsU3Dggx9cnFyjfhFmQkpz+DFtV1w=;
	h=To:Subject:From:Message-Id:Date; b=p3ciXN9NcpZoJv/q6AJ6zgGucWrVtPeNtB+xxh/yGf8UzLVtINwyDtO+GeGdhhLwyGDR05JX7oIBtjNgMCeTzh7hVtecY41QfxbFMkrs9zrOuBIgtNta3xkfmUCrsszWWV25xji3Y5kBCcVBO8wnUtw44sH8P+ZpoesHsiYG1ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNtV8A73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNtV8A73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6468C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775448333;
	bh=UbnheIvD3CKiTPKsU3Dggx9cnFyjfhFmQkpz+DFtV1w=;
	h=To:Subject:From:Date:From;
	b=YNtV8A73noYLzCjtfpqX9mTC4XcglJlpp6FVyaIkfLznq4TjNmxzXBf60eCKZb2eU
	 tEpvy4iRzfLl6HKWM8rspKPJ7d3ktKizX1iGlR/UinU9ryLt/8pY34nV1MALQCaoAs
	 jz6mXGfRx1VjT9RJiiz2SGAa0rkpHhzidHbYoPDHSSCyKjRRXs8/S1LCwIf1WsgHVW
	 +anP9MGQUuAS7yPGQ/6XK4S+o4scm/rU3y4uaVSeFZKWIryRziuuwx8Cm8d/TUe7BJ
	 dLHSIAZiGsx/CVGGOtUKmGRwY6v6z2t+pidZKgHaN/v7SFAwcgaewJkUhXdZXPdgBY
	 WfR3tiwmNHSyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17BEE9D831
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544833370.9759.18115050663652524479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8591d96018fcb1f4b3715ccee08bf892e56976bca95935a1988777694dc927e9
Date: Mon, 06 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775448333
