Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB991A714
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9tAQ7Ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8309AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698751696;
	bh=eBwfecFA3AHUz2gDLygGiNzjszizSkLRbcR2IG+Lu+0=;
	h=To:Subject:From:Date:From;
	b=M9tAQ7AiQ5bRNsmxx+RPckPr03qaoRlBX/2ze5pe2DEhVVRH3EcnFFwu5heg5nPr2
	 8mRx7C6Ecu/iLHXcDHkzc9tbkc9kRdFEMvDK5hpri0qunbm1udQP4ZGRDxv9rsOgvw
	 cJabrlNGoYzdsYSdmJYNH8b3wlzVntYDP6NChXi2/7vp8TwXS/BQTFuDC1f20+dmJZ
	 WZhbnAWIBTwKhve4AmQVx4dcrMuORkqWO11o2MV6esWY8DMkh79JfHL+3I/Xd1pQle
	 ac9aBriGa3JuPrZJ2w9NLI4nppp2Cby9Jg3QOi6Fs5MryAdnORokzYUOpLfa+Of4SQ
	 vMQOw0d2QLYxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F468C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169875169637.7696.18209153914599960867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515dada22b23dc876e81758efbf360050d1d5d38a8cebe5551d149ee4cf2a412
Date: Tue, 31 Oct 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698751696
