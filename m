Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C9F2EAE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748488794; cv=none; b=U4+Cm1eVRVNBjs4bDh7RNRC86n2qdRbVwFUCCa/FtEgrB9c21K9TdgLRBup8NuIJJs5ba9U+SV5NcBFVQOQlYj/Gj/br9o1c0K43tBRknMFWLkFxjaSwIF9DM+A/61UlsvadAurYuuD0IBnfBuPUpofnU2rzFmd47t78UYg0CM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748488794; c=relaxed/simple;
	bh=rpdc3Jxs5AMOmoXzB9ndQRQj2sP71jHQhyxpwlkayxc=;
	h=To:Subject:From:Message-Id:Date; b=CGdB6soHoZ9+4gtsQWIp6FnJLuLlvuGfgsyGSa7Q5lMFqUuYXOiWrXm+CX5x2YSky0pmBvK9SaBd0nMCASrz97HOAQQbh6vvGte+KKqxO5wKJW+7SndXL42EETLDfjDlXujGW2WTiKx8mP5Ban66tWHlcGdC90A0ELEtwWyK0/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGDLV/fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGDLV/fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C25C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748488793;
	bh=rpdc3Jxs5AMOmoXzB9ndQRQj2sP71jHQhyxpwlkayxc=;
	h=To:Subject:From:Date:From;
	b=FGDLV/fI4sP8qWOt2AYeY8/DqnK5RJg1mWNQIMh9UyHWBTVJIAVaOO7XI1eO7RTta
	 83Flj7h18Tnb8jHhqlCuL3ZRMG9WlfQj0sLwEM+0nhchfDNifO2gG+hLfpenjTk52C
	 SMWF3h/Ci9qDJSUAxwrPTdqyi3nC5dxf8xGdLkH8+9B1RFWP4Kv7lXDvrW1MUGWZ8u
	 eTnp4mQ5rRGZRDwV3nRsnykglJuaDig/g1T+ijQwd2qzHCjkpJEyYCeFVcbZoEyjEk
	 5GjoeUtO79xUrYHSM+kJr92sVpmvByAlk9F80THTmBFMFRP4Qj7oY01ooxaSUj0jmR
	 ze89KbdnM7n5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DDC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848879357.14221.3864550784358651228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b95b596c847eebc60fc94e4f7b9aa222364096da85ad34f898f557d0c25fa7
Date: Thu, 29 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748488793
