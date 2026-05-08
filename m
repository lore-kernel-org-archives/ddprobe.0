Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD971990A7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778212053; cv=none; b=Ffyqn3hZvkcKgnZXc6WpKFpmfwDUy4RKg5oYU/o4ZH5Wa7STsbhsAb6kbUQ22GgRz4c2DwRsFXVmLerCkQAFzJ5z7+S5ZUAHL6+JdUhGSkQ1fJgRh3B8UofI4F8FOeTeszfIOijHXJ/9kk9WlDMZiBJOzQemvtzS6Tq9wxeU0NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778212053; c=relaxed/simple;
	bh=FLk59PvUlw/OyCklLI0In2vYFSFHjf8Zen3IITLxRHY=;
	h=To:Subject:From:Message-Id:Date; b=LeCubk5Jn4DoTi+GDfrw2GgW6WAPr2iMNZxNHQ7u+FoMxiFAaH94qZtO13J7r8b+Ddsb0gn7gm1CQYH+9OPDwFgQ12ONr3agHNoYHx3bVfNfUPIz0bTRe9fpLy1S6OiHb1+YfKO7St7XOMDZR1N3VUWFEezpBLpITpxBXP8Vsb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8pzXjsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8pzXjsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9F6C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778212053;
	bh=FLk59PvUlw/OyCklLI0In2vYFSFHjf8Zen3IITLxRHY=;
	h=To:Subject:From:Date:From;
	b=d8pzXjshvdwOb1Rrswvz5VIAaodvTDTifVPyDsHC3vl1hnVcrhM8HrLJnF34WcsP6
	 f7kGLNe+itMLh/tRHSTz9XVOTHVod7QALYm7CTAxWihXuYmL9xquI3biceLwTa36LP
	 Lnm+jETy5TGTAxATX3ezPLaDAWKYSSKAJDLWlgmFaeTDEPqop3FMF4qIAkZWuDhpQJ
	 Z1379L0yMiWb31o94bKJwxKPVarK3jZF3X1yicMgX2Gn0n/3EjbuM57AHjEjFmOD/9
	 rhyuz2iPN2upnEgaLD4rPrLMmN4dB4Ni0R+lwikX/m9tvDNxPEvbJt7/uayP5DXLsm
	 xJStIDx0DiOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F3CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821205369.28604.8070449898709397343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8497d5e0545bae2b18ad3b79dae23a36049d79e4e25aeeaf26c3912a9ae56b28
Date: Fri, 08 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778212053
