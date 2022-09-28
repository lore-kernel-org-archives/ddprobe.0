Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B993E7E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DEC2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664329853;
	bh=coMjUpnR+eKH5+mUQUNIMOolGxcbcvZ4VEReA8u4ciU=;
	h=To:Subject:From:Date:From;
	b=ku6JPpcuw5WGyhRaUJguZR2pIeu7WVxHVl0EUaQ7TdtHO98slQ0OimtaREv4tZFqk
	 O+VcOrnsMcgRiHUC5AatuRZxIdeoM9Ctu5/OaU0FC3dBycAuhcoRavfC9AymLe5oGr
	 v1ZI4IdfIJw09LMmygNAV40Lsyqtn15BCi3VRdaI9nIerQBpXtB31K/HsZZ/6naBcY
	 8imzKYJiMIlrxIq9EAw5rYPY2VYPj6rD2SHnYvX3joPY0bqOtY9zvffdoX8VS4unY8
	 r2FiDoNMsbuIbGSjXtatRohcu7lBkQwz44cjlXeIes3c45LM2mZpTG89bE1QjDQ9Yi
	 LrK13NjvHdR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534B0C07E9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432985333.19321.5030621408824405831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c228ef14941f098ae84000f4cabe8672c4a762d42457cefebba673f56be179
Date: Wed, 28 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664329853
