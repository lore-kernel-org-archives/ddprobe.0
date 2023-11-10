Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0064E179AB
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlWAlJYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87546C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699615696;
	bh=tWceq1SpCaaFBD1IQOsMvUjGV8YblK2+mvYR5ojHvhM=;
	h=To:Subject:From:Date:From;
	b=MlWAlJYzEQGah5thKmQaLpCm/5PStP1tRBKOmieF+Tzk29zC2A3Vg2RbnvpuDIK58
	 fBEbNqHqpb0ERYzsZdspxmF2NlTVIbKaD/1ipxz82KT+D63Vr+MnIb1sW48RBBtoUh
	 Mco/tQlNzWUwt5A29OIGH+kRpUMyFyaS6IysjUUf79CexsW7cjLZknhWNDyMAfUKbz
	 DpG/vUKQYzdwEDN09PwLQObRi814OXynOL3TDX7l3YP5ruEqDD3cl+d0xJ7YZdjgcU
	 NR1vNyq2MWaXnzJudnhsnYBl4kXJPSeOiowhrEFj0yyE8o/Ig1phArWlleCdnrdXrs
	 UNIGN8tOjo2Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB99C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169961569642.6056.4511354834194097337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c8fb0297b2a279a752da7714a8c32165e7a857ae6bb7534dce406eda4db7a4
Date: Fri, 10 Nov 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699615696
