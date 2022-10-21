Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA59317FA
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D37C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666358453;
	bh=cY3vqTbNwmr5ejTaSwD65YA53lVioV6l4AkQBQCXZHM=;
	h=To:Subject:From:Date:From;
	b=siajNMSAgxOEHI7KGAIGjgFulufcQeUe5rkykCvuWs82Nyg/g4fsgCa5WhO/LcSIq
	 nhWohSc+Z4ppzAahMlf04z0cz+PtSmijcvBmPQx1zFLvD6VZr6f5avO28TYZtL22Zz
	 6WuxrwWtZqU/9SYUMUcDgxOsXKLQmbPKXPmMW5Ov5GcwcggG+Hv4TIhUrvb86BF7QT
	 vojCjcpl+w4F9gY7rCfElbKu6KMwqKbLuZ3BU1sgjcfJwUeZuQmygx5hSWkRLlJ4Bx
	 YiSEZi0HbJUnLCJGYuqO2efa5MjxSNcARi2bG8Wp8blGhn22x2GYvMbjO+UTdqpJ5N
	 cgb+Nh4IvmvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D75C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635845333.23638.2577757213551698187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8ef9008529a819ede4265d8669fab7c76537b35bd86e89921f8baf293674ea
Date: Fri, 21 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666358453
