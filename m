Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100A11FA1
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNp8cduF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88952C433C8
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698899296;
	bh=WrJU/Pik2yKwQ0AN2aBV5HCY46pWdb1g9blkHAAqH2k=;
	h=To:Subject:From:Date:From;
	b=VNp8cduFnZC7PnMB06T6M/OXczAmWMhsPeHfp9FF/IiftRXaoTfXxbBVZ9AuSrerN
	 KZiIvSPyagjfsfyEZQyC3ok+y3NJi5e6cEsoXIYpmA8YzlXE+s7VHuqLRZ5zJVIul3
	 hys87zQZD7u2amqVdob+us7kI20aFJpejNmN6HvcsOk1Fr6H8cwwArz6lNb9/HIZzu
	 Yhwco1oTiEOV2OJXCsPle0FF4UEM1XJB6kGq8NUz3LUYCG9dD1+wLaecZCdplt9knN
	 bspPlcaDR61UyqDf6wQeDt+NG1vXa9Q17u/DuT7dEIJdRNpBOLvZAjfHhULnmcxVYa
	 4ZhKZ3jJzR3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACD7C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169889929642.31810.8330983803911846320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8860535ca4f5e3ceb75ebedb7a1450870691cf29ecdd1e7869d5dec706f481de
Date: Thu, 02 Nov 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698899296
