Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1893740DFD6
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774409694; cv=none; b=PkZhVWWmRoLvmL1rtUJ530kXPyUPuIZ4Bc8VhTbrtmcKjJVARTOL/J96iUrbkesgJaBfryzlP9AGWQZqnl0WykiSYfIcVhrsrZVvKLgupwcyynO8EyHNtG89uQfPlZV6O21Etzufyh8gZr5wZKQZPXlOUQIbf9sVBeVuLFvV+Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774409694; c=relaxed/simple;
	bh=Pu689SBc/Dee+rBlNYsWWDo/jZTgwsae9bR27TW5vmM=;
	h=To:Subject:From:Message-Id:Date; b=LD2ylb9YEkD4XSPOrZ+Tz3WHubrBNtUOWsM9V8FC/xFG4LUsJqVS8MGGZzjNyJPDBH5Jz3/KKM2HmwQwslABp2E14UnP7jK3AEZqp+9QpvO2Vt31GTrJ2tcl91YC9Oghuda8yWhMIscVXH7tlJcoSaKYeINoismWEEeVpb5Jk9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lG0c/1tB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG0c/1tB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F32C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774409693;
	bh=Pu689SBc/Dee+rBlNYsWWDo/jZTgwsae9bR27TW5vmM=;
	h=To:Subject:From:Date:From;
	b=lG0c/1tBWIwRx/7VIbeEYwJ6OQftOCrV+rzKDZZgMk6Vs+zSDYpziCBda9o4TTITm
	 0oJU1PRlvr5MaAMB7wuaWAFPY2SnS2f/iAFkBNGFXk6BcDSYfn0Kvi8SFvfOD0vHnO
	 MvKp9/F4Cxs0oXqR7qqLqsqXJ+jJIKhXRd0O67JXVQ8LXfNJwqivygqed/CJ1cD0g4
	 debF4Nr9sjh3eq0BOnm4QnZo8rlN2D/LfRsGGu5bDjbvqTh/Ge9bufx9eLLQp1N+Lt
	 hxeipIK8r28EB0DwP3ftti0fjXJpbUjRJbf22rRv3bp7e+uJL7X7tRDa09Zyz0Czuc
	 V0CVkU2RQFXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93665FEA802
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440969359.2518.10361311949227119752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0122816d9f04c10b813f2897344570cf11bc840a3504164dc3637d39266b744c
Date: Wed, 25 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774409693
