Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F4B53A5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708C4C433D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664469653;
	bh=fnVZJO4ZdWEDs+jM8bUh6eEmC5l0qmZqIdShO7dha70=;
	h=To:Subject:From:Date:From;
	b=CiAPGVWf/hmXc0NRIFAptuXlEa8EjaQRc0eDgs03qMLRZe4P1n123+tP016LPW57D
	 mYnG1cOweoFTDgjIaR90XgGfaay1FHpvITk49RV4aN16wEB5POQhq5dwiwvZ9XByQf
	 nTtHVYBCY/1/ZnDSJgiHv4aYu/ttfxUFJ5meqQJrXEwn6QlGcONcausm9aiSDPnUvt
	 nhaN6Ym4GZYbOxZr4VOCg2PBVFNHMWbloU1E5xAhrpXGLcO+p6224QTdTV8gerpZAE
	 iKawU9jBG6sQ0UutzbWqnrby7k9ra7Xg8E41QxnAWlK+HzXqKo7l4LGmGq/Zq6y/N7
	 DMDAMu+lh3bow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F1EC433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166446965334.4182.14553874583240702902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b1113e85675b6df0f1ba957a5e697ff20db8fa8de70a1d2083dec339438117
Date: Thu, 29 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664469653
