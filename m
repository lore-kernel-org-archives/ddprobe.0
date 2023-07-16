Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D65EA1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 08:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA888C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 08:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689497468;
	bh=EH40n+7zS1GkvrUIGOctWKvMXG5I3d0QdLxNyD+ez8M=;
	h=To:Subject:From:Date:From;
	b=EKqMNEcz8OuXuZKWUhV/kjqMiqesOFP9aOHfvH0BdvLknCAf08uvJFD+Apk3sQD8Y
	 P0y9NZfXlt+oHEXm7LvGispNzxF6Ms4dJpkAuAf3g9/GJa6ycVbFvFkdpV0n5lAZqB
	 tPURu7kKvgDAN9hnitoeFEICMfF/MY0fDKRXEJHFhFwizd+0xolHGI1fvHemnLvNHH
	 WJNXc3qFel0PGOepHsFLm/rFr7zjczh+5qODxZNu7hI/ncG9i2BXnCHjagJLKumj5u
	 6yWJCUBlFrftHMRiIP7VlBImPp+jivTpYXyNNVa4LQwcs8g2cJ4ghD/8mmWSeZG5fP
	 yPFQonrl7vQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5DEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 08:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168949746869.24609.2127489180813639196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee304564bd82e9ea6dee7bf835a9b389b07800886e5ef08a6d92d4d254f48cff
Date: Sun, 16 Jul 2023 08:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689497468
