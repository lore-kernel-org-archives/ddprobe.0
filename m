Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB6C13D8B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766468634; cv=none; b=m4XUPg7ah2EbXvQISoeyQuL/huqNyLOcwLn1wA7J6T8P2xR7vxf3kkzmjmshpPrMEgtU3CuNZDev1brybirNCIUWB1DoMuGxw+1UZPJ38A1j4xu1dZMrAhaVOTTOwDApzdUNq8u2CU2Lx4EDAGUYBS7Kda97OQsgXs+BnC5gVRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766468634; c=relaxed/simple;
	bh=EcXHmaSaffuUrcBG5qG8xN9CZ2+bnVb0D0+C/9MRV/Q=;
	h=To:Subject:From:Message-Id:Date; b=e5oCz7+1wjBMYEH8QxCfT+9U3Nb1orahFj4g62kALb0HNsGlVp5azP6sYss7EbxCAuxxHeiQ89W79mrzojLdjCxtHvZAKX5UWs2zNbYYNccvGipUypIiOdVhmS/N6q5bz3/LxSx7ESie72VUWg9Gqo0tenALIuOY8x/kKINqIYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8B2Gqcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8B2Gqcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B77C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766468633;
	bh=EcXHmaSaffuUrcBG5qG8xN9CZ2+bnVb0D0+C/9MRV/Q=;
	h=To:Subject:From:Date:From;
	b=e8B2GqcsXFhIz5vfNEzLV7UGZDtjZLWoH/ndU/3R7SwmzGrL7sty+BXPPoCpkHUPo
	 AlH0MEXAZYl5Yxeq/1WNoSZ439MGX5YVWVzda2WxVEiRV0VW8UiUiL6QlOVwUTim71
	 V0yFq+9zYA01BYbVID+R+9j1rTZsUq3Ig5kGkTowfhVmDm2zvZTtiG5QewyBvNYFVS
	 3rX5hmyU+pxNDodvyvvG/SQ6DcdSDfwMV8CyUlhbwpx4L0ip9bitzW52tPnkQJZNxR
	 unyGgALZPz2/DDXxgR737cPncCHxSLgVJ3jH5QazjTQC7CrHanJSS+KM+QfMsTW5zL
	 G4Fingz7wPKCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DECE6B25F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646863363.12146.9339864765896274199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab724fdd62a0de00c08db23372a4baa611732d05fe38ddf097cd4bfa42c151f6
Date: Tue, 23 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766468633
