Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421CA17728
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 12:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0778C433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 12:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696163168;
	bh=Lqblyga8QfUu/ALjkdL+DxKX5P0DhFiWQnEV1z5Lk1g=;
	h=To:Subject:From:Date:From;
	b=lgq8o49B1aOw+9mkJ0sZPXX4yc30bt2DSAM2hEvY3LQuVLBBNcrxFZ/sBVfzsRrh4
	 v33BPmxzcHrpb87BmX+cfL+UzQfkqYjD36oPsmLOCFBxafbwnF4nYbhNJAPsfDzfLC
	 tsX4EFwtvZ0+Mz+U8RMI8OWxte8ks1eZfr1WATTRF2OFSf8f0MsLRxzv9P1IZxE7+z
	 iFZU7Ame2aOunyjckIc6pi45vzykcVz/h3lu6LwleQNKgjsrGaBjX4tHhKslA8bRyP
	 GzekzwipBcNTUqWxvuFcxq2Zzm5sVRQrwZlJeJPqBJFMerLS9iY5ZY9BOPMsVCbNfc
	 uOdzA0H7uRUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6154E748E9
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 12:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169616316867.1019.5386744857505672495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70cfa71e260eb3fbf01cee0b55a9a6c4bddf4a3de8e30a5b64c65fe303ffaee8
Date: Sun, 01 Oct 2023 12:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696163168
