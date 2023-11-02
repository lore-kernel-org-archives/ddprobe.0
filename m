Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1547422321
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVb22TtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86CF8C433C9
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698964096;
	bh=eq/LNJOV5n50DxruaIsPTK5eAOvGj9xfu5/weEiVslE=;
	h=To:Subject:From:Date:From;
	b=PVb22TtXGcYGRt1Nw7GZr87S+N/5qI0rG/lr9+0JzXLhlkCtzYY58BdnlDTywpgKd
	 hP8lSRZ/CybXqRcqufeiSlphaYII+riG2NFbP/1jRJc+SvwO/ss9JOp7fzMdKzr1xq
	 oUyBX7/q/xrbvN9weW6BDTqvSd4z2UEIG9338GWHh06ldfTh55pbih7PJAa4powmMq
	 VkETkCSKKn4WDEvYvozaXF+ShncP8Jc4zfbrCT4Do6ttwwTa06qa7rwAELcwjZ/VIA
	 Q/2XZMwFmXJen0OXGjsCkyLf7cBujmEYIo4CHqAcLqGTah2/zALi+ezo5xm9xtKu3t
	 +QsFn5NNEE4zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F79C4167D
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169896409640.25241.15302456377374935719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098ab9a196ded1dec37c58ea684b439ffd74997670f3afd77e94260a1347772e
Date: Thu, 02 Nov 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698964096
