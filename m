Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC81E7E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5A2C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662256853;
	bh=Rh+czQo72CNNXvQivz8lLPKIn96FCEUZZ9xI6jQbYLE=;
	h=To:Subject:From:Date:From;
	b=AXZWLZmCwrivOVPbUmGz0lnEOSaLlESCiM1VaeudB3VbmxGTXw8uMeXlceW0KZt5z
	 26Fi66AzdNJOUN/ir2RGFobd9r/Y9X3ajqo0J2tZMJmZ60bSUujh2e/SZWCz1LgGDa
	 cynJXdNrAzObaEkAQplACevwBoasAMubskEom+YSwYsd1nEheLgUg+7Fm70lSmJPJR
	 jqSuvDcObTj/np4bM3vNFY3LraZQdEl7szdYAR2gwPSYBHHleD1F07MVzvpxeA9RfV
	 M1giKt5tjaA1uoe8TaAqrgrK5I+XgddcQ8mc2OwpUabWo0wtjErIfKbi+lrBkhvQrK
	 A4aSl+nIAta8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCCAC38145
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166225685336.18561.479043473799578719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99462df151dead09641ad01275f61106d4277b40f99a9bc466b240530226ffe
Date: Sun, 04 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662256853
