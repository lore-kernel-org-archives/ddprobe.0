Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AE07B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96A40C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673742087;
	bh=IVguMAf9272z37jz28eMnIQE7aSCFZlsEv0tco3Wzig=;
	h=To:Subject:From:Date:From;
	b=V+ahdUY7rmAEwE+VmbS/2d2BgNcdIp4ZGFdeFo7AMb83O7FfIzDfMF8PvKZAml+/1
	 URO8FWDfSHeHnmadWdiz2286hLZ6mKjW5YoFMR14Inu+isRQX7up65/0w/lXVUGExI
	 QxSsQD4QHw+AIUBLz0XcsGL3sYKS35/NP4G1RaGpuLTdu4E+YiLZ21tEAw4XLdTGkL
	 DzwVQalxYh8V1RFH96vB9A27Kfew6cJ4OzXXOEpDLBG7yvhFl8OytxQTmgEuVS3WRe
	 LwZxA0nHl4jsy8vfXobX12MQEW0MW6yakLswyOk5Q30bpf3g63AXgJt127EqVzvdkT
	 T8KnP7hKgwOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78A83C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374208745.21944.6914254295041079054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bebe94dfa90038840c86a32598278051e77534c5649e5fae5f40f34c09638a
Date: Sun, 15 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673742087
