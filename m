Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0855B3D0BD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5b1w9I0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D57C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704827896;
	bh=DZ82PjTcb4QOzWXKAKo4BTdC6NZzq4DStdPhxVhkZ6E=;
	h=To:Subject:From:Date:From;
	b=U5b1w9I0pe1rEyyMLepyhz2e+dLV60bk86d+BCZYkznyyvVzNKRyxyaUVBfvQNVqj
	 OYERc5hTZZxmZCyGP/OwbWX15tMhJDZgaG4oCUCGiuyEnylb3DtGB/KJBBa31+MQZV
	 U4m+NrOEwgjG/2I06iaNShpukqIzz6eMbK85Ql6R109r/GDjNJ98TB2vZL06cgUohf
	 oV1kxOKtpNZUzRkqq5eMP+e5zewE6oPpA9Ebsh4gPpcWjDe0hh4ULI8NXDdNENtzDM
	 QvG5hMJOPhW2wVc+xduLPEAxzIlsE5wOXV5ePUXS64z8+qiN/pS4sf/euIajLdxd+D
	 NdCk1SWCQ/fnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686E2C4707B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170482789641.11812.2774944490385790323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a77b4c36a573df92a70f45b5645ea1ce0cc6d56ea4dd896d86858e4f8caf96
Date: Tue, 09 Jan 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704827896
