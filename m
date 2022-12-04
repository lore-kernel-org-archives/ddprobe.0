Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47447F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC05C433B5
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670112654;
	bh=8fUPs8Batz7h5qbMbvzpJXEMnFzfONRZOFFwxrZ0FQI=;
	h=To:Subject:From:Date:From;
	b=qbHklYl7CeZ+3YCzJa2dv7UxeotovNbVX+8gayHhJ2tkYELxGxR2w5QgC9y2deChS
	 TFeR7s9hEC5w1wG79oMfFY77TtzocRHZ7v4I4ixTh3DGQnBdVeqf9Ffheix8N9FQXB
	 90YLFJu2PHpBg822CS/BV8R5b3JZoKkivF+6p+6YFmERxGOeTwlDJYCQHcpEKTVqyt
	 Yhj0Wzx46gjqgTQfrLSBnV5+Oo4XxRdelG5XfW0foBTKhjjf4gBILrDwR5Il5PsN7J
	 yCFHX0DllaW6u+aJi6bF0L5eGCOL0p+TjfwWanC0PIKkq+5lRSE2P9BkD9vj/IM0dx
	 0ve6QamexORJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DECAC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011265434.22711.13007486864094941034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50f248335bf845c6e35e101251715c209ce9b2a1a1ab112a74aa1291d1d265a
Date: Sun, 04 Dec 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670112654
