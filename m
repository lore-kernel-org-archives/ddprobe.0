Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2533C11723
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 08:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojhIBPA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAA5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 08:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697618832;
	bh=9Jbz9cjlDMlzbAM3B9tD18s+yOLTc87aGD8IDNUPY0s=;
	h=To:Subject:From:Date:From;
	b=ojhIBPA4uDuYlsYJh/5E4fgtizKT3nMlJEyz/EB++HeWt/Hh3MEmZ2MPqlFzwYe/G
	 w1Xlcs17k1LzDZQjYjVgOzSoYAlrMb2X8BRcUHNGNxhKmAhJUsndS9WFKoJ3qGAeEw
	 7Fx5Df84vguign1LciGeSH/CqWStS5hwo8piGpSxsbfCKo+VCL6uuzH8EOUl/Ab+lE
	 vZe7A1YzQWk9zUsMDAffURGDNdd9MAxT0W34eK6BnKjhAnFCILnFKug3mLk/gsMfJG
	 wz8BTzg7fR3vcDJrKdgzUaS0H1VcI5RFV8rdSjn+N3N/+kf4+M6m1CJyQIf0xJ1vpv
	 KPGtsL2Mzw4hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C298FCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 08:47:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169761883279.13580.10902574789049641325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef08affac2cade3b932f3452c842a70a943246f34fb859bdb471cbc69947901
Date: Wed, 18 Oct 2023 08:47:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697618832
