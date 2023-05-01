Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541DA651
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE7A5C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682918286;
	bh=/zHRMrgOYpr0mIHr3dkQVak0kOeUiIRJizadswiPcXE=;
	h=To:Subject:From:Date:From;
	b=XQ8qK8mywJ/3TeAHyJbQbog8otlCfn4gAxh0cz7O9r0Dakn/VaaYW35IGJ3Kxgdbn
	 wysLjb1AIVQkDDiy5qylxHtpVdY9VogeY2+cJVNjLQXlGlCFXtSY9qRM+QCyRUSPgf
	 JvNUdGIJj5mZwO5f0n/jfojXWFfnVPAc9c3QMYxd4vzIzkdeGwcaKAuXqmFltuRdbA
	 abITmahgwUFEo99bw9HwSLtOmop2+NU8fQpcnlMw60N0OulbmJSBZBNPEewp31p5DW
	 +bvsdKoYwLT+i6+DyC5Tp5MwbiIO5LiGqXzE8cIA8Kr+bpPC8oXYfWYFg+TSVGEG2V
	 B9XKuiOMsS6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D07C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 05:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168291828579.8265.6332258254686919567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f655f64fa1c04313cf7832d0a1374caa8c1378400b3b222da9fa85c96a349af2
Date: Mon, 01 May 2023 05:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682918285
