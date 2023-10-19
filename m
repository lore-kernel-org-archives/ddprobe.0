Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D76530FB0
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 15:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZuFGjCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02710C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 15:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697731093;
	bh=SbLAjhkOmJkULNGLehte9Pa/jLs7xFJqMmeD3ogAYBw=;
	h=To:Subject:From:Date:From;
	b=aZuFGjCf1OMEqm3z0W3yeEI/rAVVsK2Ag8pBbxIqqdG3oJ0NLQyeEIVfgFTmOpWFc
	 v+yC91Yo7fzDXLuI4SksLS9wSLb8wOhDGx0pQqICQnKD62tFmAqZvlUpuPeuh5MVOM
	 QXREdEhJWzvEwCgvQd+JXOeNKIQTHqfqz+UV6ygtzOhKsoQHsegmY2upyMVUKn5+Dt
	 bcvWgrytCTBTnjmg4e/SlMtGOo2zXyITRiMeTjOX0877w3jDhHGR5QbTMAcBRQdCGU
	 kspvnHZy4v3rASTVtW0lvuLMzydBlTUYXgRkqnnmj6c6QAQ5KZ+trSu1npYwr4viVc
	 JxlKvchlTbIcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5FD2CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 15:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169773109286.7243.17860548681568220483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c292537a8682166f056ad98c7a2adce1eb5859bf66d01bdd41fbe9e600412881
Date: Thu, 19 Oct 2023 15:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697731092
