Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3881786AE3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737928554; cv=none; b=U+Id30cn/nu8PrpMUWQHJ4+kPq0S3CyIObZO5g/qUXjkuGHJPH+U3o6qbrHygsoZaqtop6MPvlzpKMl7tBVGFJUOqg+MOy6ycE2Nn0/E1KwddrhrAW0cinZGA6/U2mTtcnM0vBVwzerVIXi8F8Mu3TuHhKSv2qgGVA8bNvJjIsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737928554; c=relaxed/simple;
	bh=vGt/BZ8MMQ6biQOoGqJklijnRNcaAQAEoMv1JVzMyf4=;
	h=To:Subject:From:Message-Id:Date; b=Bk7Z6bdsaKiB1lGwyU2ZUVDAKHcx6/5i+Ac8pdPysQ+stxXEr1aMbCJKUIItW3kEOgat/41AXRc/sth+mwPIvRCc3MQ1iZMOk/HUpFOwSSfgV7ihKgpcg7ooUXzMtlJ7MJx6285L+WjuO9fnt2b9SfRDp8NxCk8oxLyLu6ZvY0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YG4KW+4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YG4KW+4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B55C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737928553;
	bh=vGt/BZ8MMQ6biQOoGqJklijnRNcaAQAEoMv1JVzMyf4=;
	h=To:Subject:From:Date:From;
	b=YG4KW+4P/Af5889OcxuY2NDgm6r63sSE2KP8vtGS+jgT7s9G0xUVMeJ3Dr6yZ5z7A
	 xOuXTIzJ5GV/7t9yxtQHm85QqLYomhzG7v4pDWlFfksFu4vEEd4YW95LRnzx7+Xc8e
	 3ULnYrXhDyCHcXeAftfuf47TqQJm8r9yVwUQGmAj6p/ncrqYd8IX4UQ88M+szLMvIm
	 Ezj/kvoEXZ4H3aLm9va53+z0Vfxgxpu7ZFDake2O0A3c8cVC/v8F6kRxnrbZ61TF2i
	 D1qzVoj2wEwc5g5VNTtOK6ObjbAz8Y6g4Hem6TB8dgMY9SC/6w84PF68+ee45vxk3p
	 7GMMJCdNahi9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9BC02190
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792855358.20068.12841746623042150358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dbf9ec6566779b5b3e6d391b834254cc3b20e9292b5f0308e0b8479dd1294b1
Date: Sun, 26 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737928553
