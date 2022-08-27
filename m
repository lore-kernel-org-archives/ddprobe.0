Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABCA15A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732ACC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661569252;
	bh=UxqQBlPUafOmOg2Xkgl2MVE9v5mOJAln9XD9ZG1ic1w=;
	h=To:Subject:From:Date:From;
	b=nf39zUbPslV9LrOXBKm5h8PGH2DBdoXeir1DhWt2Jkf7zm1QR7WLJD8dZmP1P43ju
	 J0bolP34Miv8xIEPqeKq9MpGHqXVHd4iqpznpTS0rZuUwHXvkQecoedObuJ71CkXgD
	 1P68F/KGFfUqTI7wOAoNHtbJhYu6ERru+jMvu5/695IbKJskOv4kBKAdp+Lqz9GAGQ
	 konzT6cn5Nk8cW2qWqKlVPuPxtBj9GKdkK0C8lA3qMCXz++6bue6hU+Um4UUsu9Qy0
	 e8TdpsqBBOsHhndS6ySIZXdlbw3s8SGHXLATez9fowTemy2KmWs+l4oaqpAnZJi7gT
	 PgQAG9IYVmhLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B1CECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156925234.22258.17922009272305085952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a040e00200a71e45d507b47a82d24be18eff0743903c22928c465c5111668f
Date: Sat, 27 Aug 2022 03:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661569252
