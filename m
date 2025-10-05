Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C97153598
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759667394; cv=none; b=uVjhpgUbDqo2aWKdkfYxLegeotJjNypemMbiQMgsrJmR+XIk5V1IYmQUu+7SCEP9jR32x1pRCsUD39r2cpOXPx3IPpwZ4ssPQQyr8EZhmrAjPFAHCQtiRx2G4AWobzdXHYuxen89aJlNTSiQsXv3HGwLXoTkONDDPv42jAJc3FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759667394; c=relaxed/simple;
	bh=mZYKr7MV9dRyxdgSm80e8urXVTphQTndY23adRE4/tE=;
	h=To:Subject:From:Message-Id:Date; b=ZHDgTSNMdulWMatYa4KFS2YT9BejWUDkBsg8lwECDUav8mYwnXr3WVXoChOAvtNWTDNWWObu/Gcy2lIhD6GiI+oIrLD6KIIIht6yNrSgXHUPTM6Brbicx4E6blI/HZtQQjbZSFlacqV4MpDHlq7XY24Ji76RY+nBP2/4zcQ8/HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/P/a76h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/P/a76h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB162C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759667393;
	bh=mZYKr7MV9dRyxdgSm80e8urXVTphQTndY23adRE4/tE=;
	h=To:Subject:From:Date:From;
	b=Z/P/a76hV7vxx9/Oe+/vKHGAOA0rpnz3Pqmu4YYnMpJXRSCRez74o850kckaolpzT
	 U/UUR0wkuRRLM9pfmv8D4jBHb3XyIbA3njz7WVXu4lPrhBJQCpwRp47dTjGn9m0FF+
	 kawb3sjXDoj+ebSH1RVCwTXH13lJVWy0kNUxXEAjVLpKX6YEQrn+FdGfwKuOD+ymll
	 P7fpAopLfYDe9JtdJFMLnTdD8L+54UlZKas1CWnCNCJWVKs5ABZoPosTVE5gw8avLU
	 vLt8QzgkQGcUUZdS2YXTod+txWoVNUgco0+H7ihG2KDegDhMc65Mu0HVMEUZ23zm0a
	 P6ZF58Ya9ZHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9836BCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966739358.30209.16046905515260281002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700e00f10a5a8dd0aa055822d127526bf7fa124db5e203b1a3f37e9ece7c94c6
Date: Sun, 05 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759667393
