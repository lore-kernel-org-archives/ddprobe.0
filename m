Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6495CDF6D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD370C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689983528;
	bh=aLPA/tnHYfnYg1La5zz7wvZyn89xnPlMjhoCJQP4S2Q=;
	h=To:Subject:From:Date:From;
	b=AHt03aleDErYvQBVLsjnyIiAdwoIPHtYz8ArduZ2s3Rj5YqVZ3ROGcXkDKMSMz9T8
	 kTU2tJOHxr9dkdubRf+BE8/J7A3/9LaRLhK2PQ/Dbc45um7+7atPOYXEZqqqURijiV
	 txgysVe1r/tvPnbSk03FGV1lwhWoI30LfQGWURntPRS/0VYtnY5JLXFm9jeOXkORvO
	 AUO850a0MY+RYVTkdHB3Np9wxHc/BuuIsnoWAuh29MrlozO7yhC7sVLfBJva0aspYe
	 gPJcUziqJl9Uo3Fmwd2D3Sfw0yefeAGC/od69yYJr2ZuhQS61N+WyWtU6vRMgjHUkK
	 2BW0vhYxS6IQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6286EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998352869.1584.15875576646114032040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1969613d10e25ab343b40a8c1d03eba7c2fb7909614c960990edac69fd1d154
Date: Fri, 21 Jul 2023 23:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689983528
