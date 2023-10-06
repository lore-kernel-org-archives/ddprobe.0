Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D62C5CB5
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIx5ef8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAEDC433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696580228;
	bh=AMWQgThmV2pNQ1Mz/c4CfWaKD/2iOLgAvWCltQgS8MI=;
	h=To:Subject:From:Date:From;
	b=HIx5ef8Enuj/yFPhY3EWIqA4ZYnnQji0gDTeoB9Cuqa4xkS2SrcWK17TYp9mLjw2g
	 475JqWd3Iqd9GFT1Z1rMnXfTCU1npjRmwXcb21brqf6NCmPed9zkdTVVE80FS9xJAL
	 eSbsUn3+AnM+U1hEaAe7LOvL8JnyT+OLGV7Ak3302z5VneeDZRnIUqhOuQWCSIJBvQ
	 ABUTrpJTN0p+H4m3O8P+X24HG1ZhQHX7xg0G8b/FFNg+M/TutRY8GxK5Nm+fj0f9cb
	 SJHeQefNotgs9Ox8tbjVxFhCGOcbo1wu3y047JbXNklUpG6yYNscF47L7rtp8PVsBm
	 HJKIthyBZFMDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC5CE92FF9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658022875.29199.11650030814449798993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dab39971fefa5f5a5dd11cbeb9b4caefd3a7cab1844636d6732bf5bb1a1551
Date: Fri, 06 Oct 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696580228
