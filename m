Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60F41363
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87ECBC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670735487;
	bh=qsNBcFj6UWof/0+2rq0LMVwpAIviR4sLjm/K0SbCKIk=;
	h=To:Subject:From:Date:From;
	b=tiEYunlByXs37owpDy3AROO29XWkXXOBFf6TnzHHoo0qUlGVfoY4N9kh+CTph1Qbc
	 PyjNSmdnaevcJtve0m1tev6JP+U9jFG8sNo03DCYGflZikI1tRhcYtvhpklvSzzmsn
	 kqaVCsFOauZdSe/P3sJ6B28yAeQGZb83fBRuGH2vv6fi+iPgFw8kRvhfyE20ehZkDO
	 pm5WeiRH0obaOIvi9XNGZG/qPQ6/6Cob6eB0+MBooBEDFjtoGu66HaEAe2QggAWGvf
	 dxMq3UQR2jcFR8+RdCEaOfzSFk2D8O/lpila1dWce7z1zVyDaSRoOXlrWyHDJSrTEH
	 uecs3thFZoOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E118C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073548740.18277.15082543656831580661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9fdf920ea79a46c5d959a43d4f25f4960f3b8fbba0c56083f7bf8777eab7d9
Date: Sun, 11 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670735487
