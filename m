Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B334D7B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C091C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666875054;
	bh=GS+irFjTa5MIyig/K2xCPDR7m459ZVsHuJmKLVgT0WI=;
	h=To:Subject:From:Date:From;
	b=LJei7sHTF0LQkMqoO1sHe9BFJ/kzm8fXwkwBbUy5Uo9ugXx1R9HQ4LgyzEREbidxj
	 O9dZwpCabceCZVWMjwH346onotqCaHujittuMnGPpAj1sABgPLijb41qPsm2finNyt
	 T7OKFEAw51eijNlrh0AeVHdXSQyf4LbCUWh7R+gsH8k4H21kgtI2pIuapl+mP1iyZx
	 rcNGQ9a4g8hHyd7k6cxIjBDn+dVFlfEvarj7psVRnclkKSz03MpqtPmnh7zWr+UedF
	 wSluq4JXdV34/TJC4gl4Z9KAQ2egX4uhvC6PI3/DZf/Tfw/sxEanHXphhZkgWycBz6
	 /8FjXX2GuEm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545A7ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687505433.5621.6827576875931544877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b701fdb98c1e038937d814154ea615925678a9549e04f9e70e0c24f610060ca2
Date: Thu, 27 Oct 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666875054
