Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7AB20E8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF46C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693298048;
	bh=veQeLY7LFnBb5X8rAinMi3F0qU9UU5zpOub/QqdpkKM=;
	h=To:Subject:From:Date:From;
	b=YRcRdZG7UEjJEwB+b7S95c/x/pTDzyOrw5k2Eau48S6q/vALrRoRzgFD9kJl8HCXr
	 Qu5J7CQ6iulQTadV2HaTT2ekf5Inw/uH0WxjGmFaUxuDLlJssDOVkUNarT+eG8nyQy
	 eafkVyBRa3aJ7Wxq5iF+d0qWho7EoxcjnZ3DPiiCrQjdjwwTPshjFuKZq8JHZ5tTGf
	 vsDfKn1rnNc0tmMTo11y+SB3JD64Vo1qehYlmTvqnXdSXc8Sd/ZkaHL9E+7474MdQu
	 B8/9vGXt41G2QLoBuN60e7iq+eJnQO2TcEzMWy/lGAe8SvEn2KQ/HZKEj+lpkyYQ6x
	 Tx+zgyF/qVX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91DBC83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169329804868.23203.14608136539666234014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d2d5f4cd70ce2dbcf5134c86cf29ca8b1f5a99be1efb884801e534a1a63cd6
Date: Tue, 29 Aug 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693298048
