Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31C13FC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD93C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671399087;
	bh=r7w53rie88MoeFfoIvI4kGeS06d7NWO1km0zZehrgwY=;
	h=To:Subject:From:Date:From;
	b=KiLmndhUUhG5L0Zg2bIuRB64PqIS7/IcWefbfP+MVY4yX2FWWxf1b5w/lIhM8ktTr
	 Okcn0UI7OP4+UI+SGD4Chlcq82KhGnzc7q9ls+WPb8M7hCq0Uuhj+g8ynt6cPHw02i
	 A0PXlgpboNntLv46akY1WNT9pGzRg1fM2SLt3IwGSgKxt+SDmcdYrCnZbrLuETfHqd
	 ymwCOJMuPW0i3MdbG3e/uvISOlqFfqveFR3ei6PfZHkbjj6fQCk1w/dBCIxn464s82
	 5y772avqHTHbRpfm9CleDCH/RjJv/Qs3D7z8TkkotpRrZNZMrY42vxlFhVEiKwrrWk
	 i9Hyy+1loBE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D381C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139908737.20980.3852935866516946534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ece73338fc2f48819cc93c86770922318728bc6dd21335e54e0e970fe039036
Date: Sun, 18 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671399087
