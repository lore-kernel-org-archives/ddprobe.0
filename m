Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAFD8C04
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 11:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C685FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688644028;
	bh=m4yRTXN5cfcthH2vtPq6b38ooZ5h2lRecYRyfLj3iZw=;
	h=To:Subject:From:Date:From;
	b=Iol13emPzuz9/kPvwSl1bfHSBXGz+Hst+PKXa4/2S+uZGbbPj1mXVDNTVW/6RCDnA
	 lhDAd4qx2R0krm2aNoj3otGxDGby7lCGnPwKvVcviCVfdXw0Xczq8Sv/9B49kwc5sr
	 T3ehjep3YsI+aioc0cCTVU8JgSPdrSR3zKHlHoMEfJ9LzNAuNzV6RvgRgY1hJkrtTi
	 fl1QCc+nPx7OUyIEo8FBi4YSNoySqKXYiKWuHstyokrRu0wA6+4emDvLZlspKk3YRK
	 lVBsk2/Fs2kz/58CfzP/8yY23dQKlvM9Mw6S4WWkdLiRRuxmXlyI69TW/ibOC3efeG
	 gXDMSjSzqZnfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BB4EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864402867.29538.11923306213729700977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a507796b7a76925eb07a23f832ced344b126e6990bbcf2bcbbcf9605748fe3b8
Date: Thu, 06 Jul 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688644028
