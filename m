Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B06D1EB18F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741686534; cv=none; b=jv0KvqAHeQsdaa4xj+loXeFQ6Zc4MA2iB8lF5pWxKSsYdbwN2BfhA9776zF7YgEreXmxF0/i4yyevqVkIR61WGQrjaoKdzbFWN+6bJIx97vex2pWxO5bgXYtxTNf7ti9Jh6P5q6got3+t3oH1wP3ZXZ5Ew1xe3s10EbjDG89HYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741686534; c=relaxed/simple;
	bh=k/KofCtM9jvdV0nPhI6Ki2RVtxMI4Ie8y21PnAyQyOQ=;
	h=To:Subject:From:Message-Id:Date; b=YxwnjhWzRg+8i7xxA+vDrblbYwxhc+io0XcLhgApGssO/y3UlHa2ItOw1LKYamohHbhsn3SRQqjGCAtv7CrvJCU4vzlOJVBEQVTbzv2CCfSeDvWl7dvo2WixS09vlREqSGKEkEkORpzfRNvb2Kr3wqyjFWgF7fT53E7iRLbyU0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofHTZ+Oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofHTZ+Oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE6DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741686533;
	bh=k/KofCtM9jvdV0nPhI6Ki2RVtxMI4Ie8y21PnAyQyOQ=;
	h=To:Subject:From:Date:From;
	b=ofHTZ+OabhmTYPsr0ZCcX0Y/WtcP6YFp0mUjcp+toQf7gCduo5kQUdGs/dQKMd8el
	 CkPSARG/S/Ax3mQwi8pSBH5H8o0Ht3ZSSmYB5PF1q4B5dY4BtS+kIu1VPj06mZGxbO
	 JYcIKcZlTQUENAqvVVu/nMlOeRVB4f7+WhqspEGumbG+RMg+p4WzRHqR6qTcews9C2
	 hYd+VBF+Y8tc3u1hYAhrSvZKmbmn5PmAAArNaQ9kwe8qizig4OFLbJOhnRq9PWjzZZ
	 cQTuxdD4C2cFZ52M5cHKEO6qyR4IUFN/0noYL1yEuNZH3tUCTgfNnQQBCVetT9WfKb
	 X07fLZEhHL7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B994C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168653359.18429.2810889800964205649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56595edc669033881eea7fed8d352593a08eaf90ed551f1bc4fe530f62a55a9e
Date: Tue, 11 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741686533
