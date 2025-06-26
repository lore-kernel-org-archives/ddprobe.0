Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B91B2F1FF1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750896594; cv=none; b=n2A1lNFK4H8t6/pALPuCwg5yuAyQmThz+QqwVGjNhb3Vhuk0BTS3JHxmS2/p4nrW/Rr9kpAsLRMxhyfyBzrKObCwkPZCRwD4MtEAsxGivppcElk7k5NhLOUA3UFM9pS2Dr3izdQEKboUzirn0l90R96EjfbuBWeM6OivfslzlwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750896594; c=relaxed/simple;
	bh=ayI2yPK05IyfP0TpVrBxkep1nkY+eFMCq2cw0EjdE+I=;
	h=To:Subject:From:Message-Id:Date; b=YAi5rYrobfBXmq1CUob2bXqijXgvwB+PrS+cQ8wgOzvA7wmtHhK7kGpmtvjL0mGl82KLU7nkyMAgsxQ+FKAXCE7OVyfIW7b9f89RpR9RQldz5NWM0krNtk/Ol4Q6ZsWWv86011Pk4/sa9I6tbzf9jVLJEZfpx1ZFQlpRjbucW5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6O0zZo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6O0zZo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D3C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750896593;
	bh=ayI2yPK05IyfP0TpVrBxkep1nkY+eFMCq2cw0EjdE+I=;
	h=To:Subject:From:Date:From;
	b=C6O0zZo8oN2vvb++/jVruckGndIYpw0rj+JS+JURgcBXJ5chfGOGovNfb+3pdT+n5
	 Oec6pKRvPg0C0TrJyrDQOj/4Z29Il5X/zEmSG+/+QmxCPaAHA0G0mdl2Nyr398em+s
	 XmiZ2gBOJRcsNQOaWSgB/hcLbREhju5ZD5vZ83uTk2LCvBAl5c6nbbNj80GK9gpK9J
	 +jp4sIMzsuQ3S7JRFW+v4GfUnfD29eOWgUKM2sKhdUo4gShrmpj9EcoEfAj/6aEGxw
	 sWZurVeP0EIdQpCv4a0Yc9vKRMHihlBge+6FAeYnzTemxVwBLYjRur11ZNdSEo5Mh5
	 nHJFyanb8j0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F8C7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089659357.31636.2888685528861801479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded171d709827341ebdc393a472330d608dc97a9a0c0e5e9801ccfce7cecdf41
Date: Thu, 26 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750896593
