Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634004C66
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717884443; cv=none; b=lQnlQ8UdiDoLdHMQY+CR4ldG0gr0nZ6o5TLNAedJ8R2US8eDsHSAKYw+NBZO+o1OGq8wGwdwED+BTApRy3GiHqrK7rUyFCOchh1vIiHOAcCHhSwgTEnd3cS+rlyZoEbpSl8uWjNFGp5eVcUZpUcfgus+uxN8YHaJv0fkyX//vQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717884443; c=relaxed/simple;
	bh=A5UFGG8Uad/DqaWS0sf4EjI0glQ2DA0D2Y2rEShz0Hc=;
	h=To:Subject:From:Message-Id:Date; b=twze+7laNrGjnn9pCre0wZ/EUIm6sqwQB6GXyFdx11ynnP1lSYzvO8EwzxzrPJVQ9ahzF0dn2yuTzsalJ/sH0l7H0dTHxo8/0w2HmrjHUu6JnCalWs1OiAOcxR54BeP/J6mnnyvHs7HF9AIkrdzT0BsMR8ARdWkEiOXgsvKHYwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JB6gTjR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JB6gTjR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76D1C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717884442;
	bh=A5UFGG8Uad/DqaWS0sf4EjI0glQ2DA0D2Y2rEShz0Hc=;
	h=To:Subject:From:Date:From;
	b=JB6gTjR92QW7boqcJ3Bq7gOcYYxvUHCrx9BEPBnIzL6hVprd3ELVcVJLqCt/acu+9
	 zV4FEETbgODQGV40Y9IY8DXsl2gNFVjQEMCh39cEWcgc/JKEv1K1G2CF3ydZzTSURR
	 suJo2meIjRqH4M3b2TOnGXDfC3/x3OxylFUcpP4a7t/IPW7gq/dfPsJ6GDeXknBBl9
	 Ba3ftAj67KOrZQgJrFBGOj9RqytDixX7kxT4iqho/KtzaG3TY+lxOsaoZfx91+M+FI
	 Bfu1TpLw5PAl7Zqd5pn3koheNEwAh2jkfluYPZ7DJdj5mjWFQ4U1Kt7v8yjtUtUnJA
	 hkJbpb4OvqzLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CA3C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788444276.10161.9732557074994847616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b7f39236b558553fb889128f9fe27ad2601856b8ac3fdb371271e5e1629f48
Date: Sat, 08 Jun 2024 22:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717884442
