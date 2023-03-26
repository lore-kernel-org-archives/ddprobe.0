Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5061E1845
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79CEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679828525;
	bh=0/tDvkjOR07G69ocz/dRQ4+dFwRSxZMWJx66vaEETwk=;
	h=To:Subject:From:Date:From;
	b=koKUYu/PUBompDCSFXwJPIcNA4mvvAJJgQmzvOMkSK2nDCRUZtiI0InAjRKbgKJGA
	 OKWeBurPmRjlOc6DUNWlenHJZztv1IC63NpyWGBTTggksJviMwC1a3pEI3lIRhBlMy
	 U79Ohw6ifUNur6le/w6X24IV2aBjNXQi33zXZL8+B95KXVCT19tTjjNfFaY+5JABFY
	 l55Bx0WqjHcmIzAsepmwmx8HECQRp13RmNBeuTjEwe2Wu0rfPq3bCPLCAyW3yYk8Dw
	 wul8LAzyQDSb7jjXJeVSroDcv6dtcsw2ZOab1LtYJoIHrHoL43SyruM7XWqGjC1ZeI
	 An3Ku5ExMGY7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB6ACC6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167982852580.9451.618627989314066580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42e4cc13859f55b3c420e088c635d79416b45b454213ead3300acc1f36679c1
Date: Sun, 26 Mar 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679828525
