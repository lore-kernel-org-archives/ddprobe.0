Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E143214
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A87C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661696452;
	bh=aH+0hu8jdAoh7odPrau4RR5yB6ItVe+0Olkk3WZ9NGo=;
	h=To:Subject:From:Date:From;
	b=pDdgaTj1qTAV5lfwE5vwF6FZ8Ze47JQQA6376UiX9fH1nFTrsKG8LZaqPWHsiMsui
	 sKwbAtJjZcqk5lPkahfKMTwaXU5Qy49WlC7m693ZrJB/JktS23KsTthBji2f6WwhDC
	 oiOy3JFv4tuf8U3MlurMSQkJgJNh2RgSovmaMt+FRPo25VjUy+auSWAw0nxcEg9Uo0
	 GvEB2qlS8QHcr+FbWNjSz1zNQO4PlMRK2uN02MpGe7mdRyJW5E2RCXfkSa1Ly7Io96
	 brGeO+OXwjPtbYdQo/1j7IRBBZrxJ+5HPer9btHZbgkg9cJfsk+eqY9eZY4jo/V+OS
	 Sx7WeDbPAeU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BB5ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169645233.20450.4758295114228644812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0784e04eabf88fdd89a1625b201a67346186dc678591c9509cfa1a2701f1f6c
Date: Sun, 28 Aug 2022 14:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661696452
