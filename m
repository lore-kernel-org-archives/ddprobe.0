Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EE217E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 765DEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668663654;
	bh=zsrfas7eYP5L+Q/w175XarLQmDCf2zEGFe5xvP6UvRY=;
	h=To:Subject:From:Date:From;
	b=M17ZfCqgHlDLJyNI0+rNCOE3Hpal//PpLhKM31hbUbv7lTTozBnCBJw383lgS6SIq
	 VZvi3FL5LZLt3Sh1Do5SywYc2rusB+qD8vr7iZXYSpbHd4+0cEPJjsM7O2i3mXT12y
	 mtVLXtLIaBmNNQlLYl8NoMlhkPmbaW5/2KBHZaenjjZ5YvoSpD7bpEssFhAjiKdGd2
	 tNb58qaHkKpw6yAkxcEhS+HIzdnu59Ir/NxN0zoEVNEwchXCDrngAwTTfQ408y/fxK
	 eZZFR+Ap7H2o4j7plYNq2HI73qhWXewvhIwgmm5OgjliZ67NB/e2KT9V/Bzkip6EQl
	 +pofG3J54ngCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C45FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866365434.14093.6268006137966090718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90117d8eb3c16999f0b0cd0f9a3e68cfc2b997345f0aa5c86edcf63feb3cc7d
Date: Thu, 17 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668663654
