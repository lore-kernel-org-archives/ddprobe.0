Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D735226
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB45C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687896188;
	bh=YkWOmpYaI9LyH0+q0ZUo3orWDa0uNJBqcN41YavOF3Y=;
	h=To:Subject:From:Date:From;
	b=QsBvq+I9xqNJFuGZrzicv+urLB3D5gIn7fl1QgD4bfMyE8U0Try5MZLfghc5tJJqt
	 jRqXtC3keuxBvxlTJtSE2FKkfGgxHEWH6VONNZEivMrpf+Fe+2WOPBG1rf2uI3clqD
	 NcZasT7X7EeOnFGKi2LA+vWOhx1ZySdM7C6vBSyt5TZcrwmYboH4aQamqX8WCfCpJ1
	 XlOH6iSLIpU1RAfkAvzBs9s/isdzp8d7nwNva0foNmF9RnQqSV8i2uhX4WoUEO4pBu
	 dc18CSfrmW6EXcVR/VMfjf7D7QB0KEFW+4h9j8t9WuA5YzQgPg0vcjjRLnT8EaVMQT
	 DLsFU99b0HaGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8665EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789618868.25798.11543432963958870239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a65f08983b8f51beb498033845d69fea309961f986e1ed12498d5224bbb87c
Date: Tue, 27 Jun 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687896188
