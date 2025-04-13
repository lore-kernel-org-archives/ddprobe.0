Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4714A1A3146
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744541994; cv=none; b=YZ1WeOcZdD/l11uaghtlRckZpcWh0ci8WWe1SNimcb8Whf5nU7Eb8d9qwuYYPc/aW35Ag16i3qSDfa+HULy9gyLxBhZNf5dPFd2AjsYDkSvBTuOjB0FZrLeLQIrk61QP8rkYjuyJnGl2YjPFHwVYRW1F0BYBEJsp+AXahU0iXIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744541994; c=relaxed/simple;
	bh=/oBNr+c4+hkWVRgR2XO3Wf9zT2uOWjBQ8xYGY2QVTik=;
	h=To:Subject:From:Message-Id:Date; b=YRdMuzyK8O7TXJqogqym/Cqyk+aGDQDGXpoJH2ta+rVCKxLZaPclB+xJDalVyz9O7jg7/2hvPdZYz+rayvzImmc58lQxs9u/DVDnAqp4ouO7m0aCNONLS8cfaQkOk17a2N6xlUA4LfukXW5kUGF6KH0/i0g2xSeEhOPAV1H8HzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WT9JApPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WT9JApPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF03FC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744541993;
	bh=/oBNr+c4+hkWVRgR2XO3Wf9zT2uOWjBQ8xYGY2QVTik=;
	h=To:Subject:From:Date:From;
	b=WT9JApPo/e+59aPhUI4jEquDJewCDXWK2ib74kS9oibeX/sIaCG5tD26LTOgV1hAt
	 W4O8WPseZYvABEkkT+zT2nsRFG60EPYX6oSPJ6PwNoLgfn+LPiUP+lL9eux6C5u8zk
	 kRenTay3O86OKCLJwh10xd+/6+6hvMp7fRBqhtYoF7pCazV1Awf0h9Dg6+3b2RsY3J
	 NqkUZI4QBiyqKV8fDSE4LXfxg69XX2FQwza0hZ38LVL22qovvuzx3cyaW5b7tVU6Gr
	 Q/6qukQ7xzA1x2H6UvX9PuqYGY70D2uHX2MeOR5fBURiGcyE4gqWAPfQCSoTpoJV7b
	 Hi1VWaGt7x5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BA1C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454199364.19894.9075123592677850355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab236ddbdfa521d77928db2d1b2d8ccd448a207f3b9212c06cf1a3736f02393
Date: Sun, 13 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744541993
