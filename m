Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF38DF55
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB54FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695588308;
	bh=kVoQPyHuDnTK+Fzkcld2EYlGOo7IFAIG7ZuQIqoMmhI=;
	h=To:Subject:From:Date:From;
	b=lChdGA1sB4FWACR799WV81Q8dQl8unrfAXy27OIWUQ0yr+sXxdu3oHPaUE7KypKC9
	 gR7sm0RoS1xCN9Ct11MgALBAQi6vIN9Pv56VXg9IQtOVI6AXgXR703HfvFooiu3tsx
	 QDpMFW04NepAXQxvA9fClvsrVDHyOqoDBGjNFt1xazjkC2m78v2AEWY7FNxmSwxdW6
	 A/1VNtdxZykKMEiBN/6FXyElajEOtveqtwlsC++NW14WFGU/Vd8rtrsUAgauSgu8Ev
	 ECHq1Ga6lEPyWDX6uspwqeJviwEq1XIwls/Fx8e+j2f/ABZOmnstR4Jxz5tjwn+G8P
	 jnJAmcUIuQ57w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA15ECE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169558830868.19193.7557817881825544242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742a3584468fe6a86d69f425ad4309f91f7c8b495943b5f65897916658858527
Date: Sun, 24 Sep 2023 20:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695588308
