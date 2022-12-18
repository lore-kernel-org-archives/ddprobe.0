Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08A97E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E55C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671352887;
	bh=46jNCFrr2KvMUEJA3zawUAQwdoTMat38bB/yF1rEays=;
	h=To:Subject:From:Date:From;
	b=Bj1rLGDDQjK7xksx+y7O0WsTKjYvsevntoPV0p/fgMFguqowxwJYICD4LO4Jew8tM
	 ksKmKbp3ZOzzkPqbLTcQo3lhNKj8oYDtXzbeCubJkYOv8pXYIlSTjknZnSaptHKVeY
	 93D4c+5K8FNVUY7OhJcM/6TsCBY0IqZFzyEN+zy/MORkrV99GO4GNdaacTZXJUxRwp
	 N/VIk5u4qq2IPI58Qaj4IPsuZq/1JzVWx73KXt+gjcSnk1o5/nSLJcShyi0Y84cdHd
	 CIqHghvBDPw3+T0dXx55M5T3mnii/nedMAy5ap6LnI2jGM4gtYG9o+55YvNt/KYadU
	 RXsZvdB96/AzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698D0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135288740.8144.6109692938544760126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe475941befb6003287ea004e1a408879f836c116c0ff3fc74eedadd5b2d2cd
Date: Sun, 18 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671352887
