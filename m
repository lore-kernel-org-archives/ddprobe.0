Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8A028E7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7507FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661680852;
	bh=/eiIgFmo6mtO/NDAAw0LSFcZGfV91lC9LFAOqhBssBo=;
	h=To:Subject:From:Date:From;
	b=QOJAkMPIcEI2f7qxqrrVUlPiQkKKWA/e8O3v1PTsbj/XXNj4AS/D2cmMTyMAM7eWS
	 CndRntkggK3qO6OmVroRUzt4YXwEkJnuf4pd2Fo5HyqqGAiMo82zQo7ym+JK1c+4Ny
	 O1wOdxxI6YcNPhb3skysIg1Dc7eeVV1C7E8xIlTHCj49n/vcgLLojWxDcD073dkdkJ
	 s6+Z7F88WEeYxHUSP1Zqlf3vIrv3Jydts47IlxG2W/eyEQYpXFPV8tYmEpGwT+dUg+
	 vHLBo4bRgbt1CvXvDKb38lddFlxu1n7EBPcayuN7Xql1+u5IqDzuWEY7CuEXuLhi5z
	 XxDkT7gAPcv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FACC0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168085232.27579.17609103422902934075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85c14a7f17d77885bc5f17312863e71895cf8ee513ee126d91618460f7576ca
Date: Sun, 28 Aug 2022 10:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661680852
