Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5357F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72183C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662877253;
	bh=QNKffVflHY/UE7/w4PZ6EGoq95E+3CFExoZkDPx1NG0=;
	h=To:Subject:From:Date:From;
	b=LfdfgoF/VvvSxQPK2QCOYnfmHv30Hg2KjppTLf+8InTTWEyMXCmY3Qkw0sSr8MNMM
	 UzD5vSFPqRrOH1lmVDrRbhtDRbRBh4RffZXIP2ysWpVR+t+PgQjIILSauFQ+0tWewV
	 9EZnOhOzIz+BJFjUbiHMTyEdHmjpnSejrApRoC458MqVMVOEn7jYSDWgCEDl/Edohn
	 w606c2igFjfj1PAYHTNC2qfS0etDYFqpdoLOM6/K/qX6BNBHGfPSFJ5Xk4olzqZyK1
	 o+w1KWXos1vwPpma3dLSndYmc4QYCF30Ttv+4dS73cwxtwst+8UTFleRJwDGuXe5SX
	 tgfyJIs9iJj/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550BAECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287725333.26241.18171482870280286001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5135e23190fb85fc7f4ca7446062019a52795ceef4c2bed003d9a2a8e7edb2
Date: Sun, 11 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662877253
