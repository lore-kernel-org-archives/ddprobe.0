Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C67DEEC1
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 19:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D9AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 19:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692990248;
	bh=abd4spMnPo6ZQyfTaH63nLTGYwpV5C61XfK28gPPkJw=;
	h=To:Subject:From:Date:From;
	b=uy3ooXbPo/DTeaikCK2tO6PdMViZJjVpLT8qWWyTLdnFjfYllJhZuzsibakIdB6Pc
	 P/b4TO4j3okRTrIPidpYIhgLF6/xKo5XpZbgPxtJuWXAb2nptCkFZhQ7+hTAFHNcHy
	 tkHLynpsyOSsCSwq0O6nbYQIC39Uvd5L82orFLPH7byykqm3+mF6YY5MlCyHi+HjUN
	 9Gpq2BvZjd+RIMVymD2asc3RY43jvE3OdMwQzgBbn013R7VfA9QgY6Nr6R+Ldk225u
	 yl0rjCWFtH1YADjzugQZ+LphoJcRMC96jmOIRpgQDK4xnJ47HNPTMazb3L4EJ6DrnJ
	 XLHZLeN1Bc/ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFE6C6787B
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 19:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169299024870.27005.1402380059224762486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f11b08e1f967e436be30028363700018a865e15e1a047e88f44670d2d84d512
Date: Fri, 25 Aug 2023 19:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692990248
