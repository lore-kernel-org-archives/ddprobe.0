Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05082F48
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB6AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670860287;
	bh=HBgWtqXOyBIRQWzx0IkLlaTPhzJqSP+hF47M8Mt0zLI=;
	h=To:Subject:From:Date:From;
	b=AIifJ+01TDmkQz5GxjvM2iYysTn8Pw82UryWI1Oj0Vd5WA99dovCb9773CcRJ91UA
	 7oyN8KeFD1x+CM0zWNGglwPm0E2k41vmOgPyx75vjiZUuQ9qy/y/Pt80nfAvy4w2i9
	 jHxxVmgjR7M3HEX79PCOrvyQJQ/L4ZxhIMP9QhHU0e7czX/ZO8cTJ6puBua85k4RQi
	 Ts5S9l2k2hlCONYEPQ/eGXVKDqhFKHBcOLFK6VSu6eedUT/4S2o43Zd1a5pS3tyKeZ
	 phnHnEv8rKps5AwAZZdGenE0ujo6gXCb8lOO4+GXY/qVY45HTTzQKtoEAhPwbr8fES
	 EGSg95WVSteZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63175C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086028738.14096.9872143581140198745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52e0d05190d6336f27f68c04d4de85dba599dc22212ee57c65af267196b9c24
Date: Mon, 12 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670860287
