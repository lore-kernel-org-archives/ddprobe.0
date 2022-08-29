Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B236A2104
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E01EC433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661752252;
	bh=wrvy+eqpJp3RDSrtVe8+3GtvS9GBwqCwYT55sYf2Fbw=;
	h=To:Subject:From:Date:From;
	b=WBv+UNUMCw5wEmuh7ftafxgtP+rGqZd72M+qsK6CgYcVlOmwxqvZZE+OSBCSRgxxZ
	 HIaYINr4DNiky+dyUKJabB60DK0SDx2347+v4FP4R6viBhk+HbRZ/URSwAGxPkvsx5
	 AtLajvLDDa77JVjJTZjLwOdbM9+QygdXGGrQiDdr/gWK6xjwehsmUO3EvW+W3hq3jD
	 DrPPo5nzIvcEdOEP/jJ15CQ8d1Imzf/KOq2z45WhxvUqHcrSHJB+8LQJuJnKPuhrWX
	 fNaPFaJWdfYOWmBSuV/iSP34Eq84MUdzJHHux9Y+YtYCnQjphLuAnR/2mC7cL44hjQ
	 s/oskGakO4p5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533C5ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175225233.14331.8457463799341727864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8ae9dbf4fb83d2e68081f153e2178f87669e40e12597322757bdaa2c710c0a
Date: Mon, 29 Aug 2022 05:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661752252
