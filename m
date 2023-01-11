Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C978817C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D88DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673404887;
	bh=m8yROUYzOYydP95KCb9g0vNGhB5MEHe+2kEMsitMrFc=;
	h=To:Subject:From:Date:From;
	b=o/wQQHsYi3fnf+GIq6wc/gvQealYHASg5+6g+Ezcvzsgqo9PLnlzgEyuFGygUTSD2
	 iEkBuYjEiIGWDvAIyscMAAyWueT/JOJJhy3izbc0xbASG7JRVjNR68DyeAbbv/E2UD
	 xP8yjkNdoQGtwO8P0X05Np1kJhZNflu+6G9Tc61K9EgTDhvrykyigvp+YJQYRKsSjg
	 ycbWCMcSU8OZPmw/6haj72ATVOmrc3MGj0Z5b3f3fkCC6pbyFVmgDMgRo/6hQ+8flA
	 2RF43rG1D3bL6GGfs1dFvTG7GQxjYbyBrIKoRbtR93NsijDl4apQzAdU3zYfhhgCnZ
	 1rMv7hyVYEf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C5FC61DB3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167340488738.3933.13209495293765847084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f807db3c9902ee9ac524ea8d66f34dd2d6cfa0ad572bb845d7db5e0da1ad0ec9
Date: Wed, 11 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673404887
