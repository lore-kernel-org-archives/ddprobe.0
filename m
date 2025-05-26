Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2921C78F29
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748224794; cv=none; b=af60h1c547FRxMx38FIaGQabpeyBOQa//RTGQ3mleiEiGoslHeBeaCZD9BUbXJhMgXfGbihCZN7Zp7h53ewinpkCZJoLthI4PtNyUszEw6OQQjgD+4mYTVxFu2XnlI6lfyyrkAS/d84W/nbrWPLG/ASgXogCXIezVhcvig/KFrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748224794; c=relaxed/simple;
	bh=q4YzO0Kv9VnEY71v/9hOfUBfKTIJtBr3IzDY3XKswso=;
	h=To:Subject:From:Message-Id:Date; b=Z8VvxuHqDV+uYVs3o+tTPBXymSohpajnDeI9pWWn49yX6LkmJLNy3VUu/bcCoT9LbT5R4rtoNqtiWVGg0NdRNe/WNW6948PK3DYmqpeF9/pzW/nX8X5QN9XR+FhH/uBWOB7iGAckSC/7WaNHL1mvm1t5Y6/PkT8WmedxWHvNJpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGjiQoeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGjiQoeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C2C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748224793;
	bh=q4YzO0Kv9VnEY71v/9hOfUBfKTIJtBr3IzDY3XKswso=;
	h=To:Subject:From:Date:From;
	b=HGjiQoeAtEK6PZcy6eFJlBa5OgoC2I0d8yEFcDTwCdOLKsKFWUA8ut7xwXeTox7bi
	 5v1Ivvv6fCTiHh/hcP3vw3IpvzjOxjYm+UDkGXGn24VYl6ev8Xp1CqhnPSagXqttbD
	 R89pcrrCTy2dnGu/itYE7299+bp1E0s0CjAp1yRV3rlr02pBBuIOHef7FkbpU0L5Jy
	 elkf8TlY/Rpm4LwPbQQlyjDHdrr0/V9eMqlaV1CI6t9IydbjuOAUKVliBrOHmLNLVP
	 Bx7N2ki9dizTM2fUjdvIlMeO1TtPqxJ+8gRKtulp9dJVoypOwUdVxA442EMX6sBxy9
	 H1vhFcViSDfhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90983C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822479358.21296.16784751240418237273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1a57a9d7a202f75c5228b6b113b4500dbc876c7471203d71af47d0a3b39ece
Date: Mon, 26 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748224793
