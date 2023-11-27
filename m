Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB50120FA
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqnQ4B5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FF0C433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701057496;
	bh=6JnfJ+cpjIiVxPbO2QGt6iGCquqm0ymCSdV5B0hgEd8=;
	h=To:Subject:From:Date:From;
	b=fqnQ4B5HybGqzz+ByliYeRP5AMoy9lpCNbSdcPUNZYgtoUlcphi1FpkcmhCGSIufu
	 6YZLA/jfyvFrC7T04ahpMvr5RTT7mOGyrCNsPZihLzDciTn8Jri/B6y9Mxl0IJXuxu
	 IuipfnjPfHkmGpw7gCvP8dsxGtd8/D8UrqfrX45QGqafUwcZJXnWcajDXAB/TPsZzT
	 3XPH6NZ3vHQFJtyhmWh0vZS2PFKYa3JWALrNciuPFAxome8+WnMDZos2gQ4HkPbFR0
	 3v+SHbmAxbP71cxh/bvUl1ahqfX9OVX6QiWv7vkvcAIvQhSd6GkYnlv+fGeFIYXWnS
	 8d9zdFo2lFUcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61958C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170105749639.9722.14536944989628523803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18032ed78497ebd2354d3f04e3acfe48579461dadf9567ed269996c3a41d9885
Date: Mon, 27 Nov 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701057496
