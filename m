Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D825D17C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83336C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671843687;
	bh=tzr0luLFnfEjmbJPKccSkrJbJtB4+K+N/62hkP+hLGY=;
	h=To:Subject:From:Date:From;
	b=LJrD/HbDPveWbOw8Q2CUKjiUmGSzhmfgQxlcUPX6pRPWz+wKQlWVxI78unp7j9JG4
	 nJDUnAY2dvSs1pp3/MZwtp7W/Z3bskDVElkxWbLyAl+qkQdnMYcM93UF9hsNe7TT1C
	 6l4CiSLbRtiUAt8D1+6erTOcLgVd2tkKu124fPshrMTTJgKnaEPdDZDOp/BmGMn1t0
	 hUQKFGUPHYVgZI1JIQ8I3aNuACNC3n7McD1rG4EVQzl1eD1zn+ja0QrY4JjsxMgWSt
	 DjNa4Ytvr2+JVGoljXtW8EcrOSJju3EwDESfBr4Hp/JNE6TCu75NF0gX0ZOHHb9zH7
	 e5wToDaX4uPuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6607BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184368740.30045.6118902671755844900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780dfa08871a0b5b0ddca455979cae8034edc8d7d4aa9eca2d584fb412a61bd7
Date: Sat, 24 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671843687
