Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0CF6AA5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71731C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662765653;
	bh=Y2SNsNPGz0UeERsUu+PZYpPUbJoIaZEgXk2OOgMaqCY=;
	h=To:Subject:From:Date:From;
	b=gZJ9wymAUS2YHHl4wPNVQWOQ+s+MPWJedBtinG66qapZzOL0L69+2OymEQRrjY7zL
	 F7hkhICGWqLhSl/ea2ZFs2FXWF5yPzh4LdfjzsAdp4K5XBLZHtuE+VJm9a+EyfecDa
	 n5XcjjCifB7QU1LovAfq7ixgl6D1IIyb6FLw/jYvJ6TmlBw+as+qg/LLus3ljmKA7L
	 yAS2p/ya+pdEbM9/cB/WdPJG1v+kwo+XOB1zDDNjnf7NVRcMMMCKE4FAOIATYsc1Nh
	 nDqqKLKlSWGwkfBEyh33NXZGf0n6/Dhc9gaYXaNfc+XvO+1Cs2k8V2edQ5hxkMhQZX
	 20zq1X0V5yiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539A6ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276565333.2624.4456265895827713386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89e8aa35fd15f49f0513b9b1981802cace2d29d22e7d6826550dea27dd84c9c
Date: Fri, 09 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662765653
