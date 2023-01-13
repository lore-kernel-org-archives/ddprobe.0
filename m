Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCF233ED
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810D3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673611287;
	bh=POx50M4rrQtP2Pg820sZ87rnlRL7nIYEsdkQaFWhirE=;
	h=To:Subject:From:Date:From;
	b=Kr/Hep/MXjcxumqoHVf6abS5IBAQWvO1Q8rFGVGomNVZVtKA/lqIRvKI37BXL24FX
	 E6Ti1SkyoyxVpQKUBFe/sm9TIDXSVWutx9JZs7iVWj4kVpT5JVg71NrT0V28fA5l6+
	 PO64CAV4SJw9NcdrxTyJm+FmXw6gwZtzslceUc/j19ykhhZ5scZuEv01OQet4ReVPG
	 L8ckrB2xBmylEuSCEo/q94Jf9WGz6Mo29kkkOI47+tmTvcJkgRTw2EJNk1a4ZoOkTg
	 Wosd1xxrDBS47nrByXDWzzttiGOrCTOpF3FXzO09dWDWOih1cJMWbeFCTjY1TeMCK7
	 3PxegCFTsTA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E68C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361128740.26912.14669543701114256059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b4625f6ee1608fd0ae0683ce3494bcec17c288c8f0b380813e41efd8a93563
Date: Fri, 13 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673611287
