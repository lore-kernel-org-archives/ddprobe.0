Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CE87B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E32C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666054853;
	bh=TVwTDXCvq3MWzR9Qdp7qCXGdJLmkZWJ7V8nBzO3WXW0=;
	h=To:Subject:From:Date:From;
	b=kPPXGt6vq5N2g+hjPyV7gea24Dg2Pdeo+5DKV6nu6UYL2x6XtCQiM9clgTWKz+dNd
	 nVr9l0wDShtF0a6JUUVbAP2GtW9rAHkZpDXqJuZ7s3XkjEYiHdbMbQOWIM+jPUc5+T
	 DPBSb0Pko2d4ZjO7Wgm79wqxOEBqYflDn3LoEKByeCtTapuzkkBRJ+DgxeJ8U8baIt
	 1sew5SYYWnGjERdQBZlmbSxZc0QcAkCW/6MBq4sLoN+vdH7l9yktiZp6QggkLda7MA
	 p0ggLRtJxf3PtggOItiWAYvAZIEVwvE4xJs8nQpV0+O06KyWZdUXFet7FYf2EX/zXJ
	 GxGkR77Ca3w9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6ABC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605485337.5193.2627948626532498119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e55d7971159b3329b0e6d608e17a32387e2faac1351cad9b340a8a92ee0e77
Date: Tue, 18 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666054853
