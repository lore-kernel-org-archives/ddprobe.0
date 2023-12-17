Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FE7136F
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNWEV684"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C967C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702781296;
	bh=2loS21J/F3ziZdf83XuT2cRBeUI44w96PjwVLzUlmzk=;
	h=To:Subject:From:Date:From;
	b=DNWEV684qEhH50FqH5RjcLxGy9asj7WhLcW9Zk5nMpPS4PMr73N1PaETkN4CHZP56
	 GVra2dK/Q3+aaL19k6j3fEpttYbgKOZ+Mhm7Dq5z/1WyAxp4SKwCUG8F+kcgsd0G1N
	 kkQ2OtcOlCwqXL23HQkNqJTD2mKmRTrTHbNSR8PipqZILc+8Be3Yq+OE51GG55M+Cu
	 /pWWe1FB0KK2nhcDl/laOCgJqfKc3p//SsTtRfkBow3KWMNMxVYNBM8RcbDrtzvgpT
	 rRqKv1jPueyGAZBG5w3j/KEgt02mhpFLRA3w2qC06QgAAsuGLjLflDxAXyy9xzcpml
	 ZBQnX+ByI+teg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690A6C41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170278129638.7292.2944961964764047500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6b5b032a954a43e84409a11ccdda8c0cbf664a93d634ffb94b307d3af7ea44
Date: Sun, 17 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702781296
