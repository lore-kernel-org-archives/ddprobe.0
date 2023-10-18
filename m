Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795A03FB33
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 18:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoOGp6DD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6364C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 18:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697652492;
	bh=XaxXYdQvtpY1iXoIelRsfRYi3ZkGRUy9bpbmK2fDin4=;
	h=To:Subject:From:Date:From;
	b=YoOGp6DDXf8et0YO639fuceDh1p3TMWxTsznVX495J1b87TB2y2vHSxzUFNHFLGSS
	 GtseFVIthl4cvUNsJMNO7XFefJEfLZKrr6H0l7Z5+cGdNjIKEfyT3EOyIasMqr51/u
	 uMQNTJZtik01Jp02lWw4e78IsUWvUglSVRsx8dqlaL2rzcY1AkiU+YkqgUUA5busbb
	 iSFbs7VZBNQUuT1FOrC1gy+06DTm1S9+pguw8AcT3GFIcPaK7blTB9X+CHRyNSTDnR
	 lO8od2QxfJRwIi3iIK32jS30AzrV9QG+xdXupjIkDHJNGxWZOBf8838WurIoeYZiFJ
	 h7PnQ4rMAws2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C923CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 18:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169765249281.13506.12950145355161104476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f2234d4f67cb7fe0f9ae0e65c4f0d115ad5e41e1f817c160ccc7d13a8afd96
Date: Wed, 18 Oct 2023 18:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697652492
