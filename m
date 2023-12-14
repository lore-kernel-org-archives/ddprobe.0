Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051762BCF4
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oda/rIUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E40C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702558696;
	bh=KrHQ7V3GUE7Hownkb/bu9dP210QESMJoYfwDCfDHe5Y=;
	h=To:Subject:From:Date:From;
	b=oda/rIUyt0z6Zkyki6V99iGEWUMOzShFCxgp4q4B//2cLzFfxsV2KjZwaD5ngC8N/
	 GTnjJZF3rIG21pSHvZYizIylTIGOHjwUMTNz9Yi59VS36dbkjp1Otv6UVpHkqhcqZm
	 fBUgC5JveUCadGFLf9b2jj5w14bRaZ79cJvPpY4UdzdXZcwl0k4tPXNiWTkN8nCVyI
	 fIOHu7let9iBb7G0TFh17r4RmDXPyKDTUp9JSnFf08C2SsRwvc4NOastlOVbup2OXm
	 2r9dGX+/nQ9oOGIR9XqpRW0WS/6LA+zD2+NlryaXcwWqVeTkAJkctcZhwGLbIwbpUF
	 H0kQTj8SBr6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C781C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170255869637.31347.18385838666920643223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f075b1e9a270b43ca813ac97ce92f96c93c08766bf8a8c34c803ada48e59bd
Date: Thu, 14 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702558696
