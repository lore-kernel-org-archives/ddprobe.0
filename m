Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23891FF61E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775315734; cv=none; b=UUDFftt4YkzBvAcfTHz/Qiey4HMQT/kgZeYXUx5N0F6K9fv7uk06UwMiGWQuDGlwWduxWEoMjKm/WBfuVWS+iBWy7Nz2fxzL9uycg8ouZWDmmlZL9dAVLLuq9t2vgBoGO7wWzdrFvLF2JDbIRkoOekUsaooIZSFFLtbCCrS9nog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775315734; c=relaxed/simple;
	bh=SFtZj19mqmH3SAbkTnyI25zWq4hzVbwh1eHS1WYWAtw=;
	h=To:Subject:From:Message-Id:Date; b=aaK6Tm4OPoWEHMiGl6lrSdWc2qra5HPYuppx5sjY7wUsLdX+ZdXwyPqgTZTo37m0vDUDJbJ1J/GwbCi85HcZpXkpNoWtMRboSVzJWKq2FFSD+e9/iXvU6BHHwGqwtZgSyBkRIcYf6+t8xijLbR1Jp0NnIKs9n3WeuPeg02zGF+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmNzqW/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmNzqW/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B87C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775315733;
	bh=SFtZj19mqmH3SAbkTnyI25zWq4hzVbwh1eHS1WYWAtw=;
	h=To:Subject:From:Date:From;
	b=fmNzqW/AoDdyrZQ/pyLtcG+XpTRRR7pZfz1Jj6hDSt33VfceA/Yl7clb9NIXPC4nf
	 /krvJF+QsfdfpzrxaJHHkQ0WjhDs6wN/FWorTLHSKRzYhmwVH3C9MpJLrstalByfHH
	 6iITORvbrkQVPyQ8RV/UCiTQOzjsGriD98o4BAZelHuBEx+8Lu/yLeyW2Dw4eMwLRK
	 ysxVSM/moQcATRkF3oYIupVdTyA/QFCdrr3UH3t2V9mi2UbRowWpz8Y8miCgjaHH8Z
	 DJq2bTYPbQ6OTejBbVKZ/H0u/CfRSJVKKoi/qXBJgByKeWXl7xiAOGze4hbmWwQf9M
	 Jg3EtBvtdm1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE641E88D9F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531573368.31251.5316507040136177683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323f5699495b179a7b99a25e85fedbe307061a9d6630c2d059c2bb541018e315
Date: Sat, 04 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775315733
