Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1278E3FE41
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oyc6IezE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B97FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701770296;
	bh=jVkirPJf+1uSmkncRYTOHUtPkTSRsu8x58NsdgQ6+Tg=;
	h=To:Subject:From:Date:From;
	b=Oyc6IezEtco0tX85szDa9NVb+UXXBA8GuNvRs95SzAlKUX0sbiUB5apzXsykJs58J
	 HONJS7qJH2Df0HrZ44qoszhKVo01FY1HIidqUdUZ7v7stWqKIa/09ocOxW9T5BL/k+
	 v4YgaiU/YCqNnpIExGaIqWnTbiAdfDuLd3JMLXVbqtRdzfPCbuzM9gc3EgqOc0GZF8
	 hg/9hNzXoOw1/aJ8QFqt7CXMsOzbdDqPUFHfPLsJE4To85UfggKLXNhyjwvgvmnx4r
	 QLZGifDvkVsy4Ai6g0/tUitMeRaS9vxbOiWf/O+MLQfIKyneYoQ8of0BDBX1FBJyTi
	 9+0KLfMOYaOKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60130C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170177029638.26597.7667710387540464508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bbbb350a5529d99dffdfbefe174c02717d5836972afef8c0591dfa7344f3b6
Date: Tue, 05 Dec 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701770296
