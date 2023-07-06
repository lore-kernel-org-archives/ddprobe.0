Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527A91872
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C475FC433C9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688672228;
	bh=slHjUhcRa+r4rultUQ4wHs2C4yDlhSCuuPCI3JoUbw4=;
	h=To:Subject:From:Date:From;
	b=JwMocAlWRvWbUYFkQtb9/cTbGMfqMf4XppRjx5aHuSEdOXgtPiyhSsYJSCQ4byRHg
	 3DCUa0eoWMdrSp+M1YkA2aQ1woRoXedKdNCVGNl4m3CwNx9jsFfXJIzcfw7CW741NF
	 epZ2K0JYxU34ngIsoih8q2l+VDThK90u+y3+84w1MyDP9XWDcpvpIHlNfc9oxDcA4P
	 J3ixGRtop6PhlUPYubeOYhirrEshxuh2qGdmJyBpcMD1mcYgvJKuUzw+mNIMA/PRL5
	 N9nJb4mBQiy7Z2RW8ml0pmty3TVOVvLei89gRemPl6ZifGAXaqCT8PWj6aeKq/G4EL
	 CLb6I4pryqf7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB87EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867222868.4357.14159770275583648511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae65a6fcf687179558d621c3d6959a61c9c059e3b568b7013150cc2dade74efd
Date: Thu, 06 Jul 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688672228
