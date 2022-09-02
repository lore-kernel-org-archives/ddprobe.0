Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2A7EDE
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7050FC4314C
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662086453;
	bh=2m5YnulbjGQnO329VY5icq0hGG+zdcNAWUKy30tuP5o=;
	h=To:Subject:From:Date:From;
	b=optP4BfHdovxCHpFEUyiZlQhisJG5twd55Qy8neIdsXDoGJV7Y/IeuFqJavoHX6Wu
	 jwN0yZh39xulAvxEdnoay5DTk37g4j6SOvoxAE6neRi2yXUcJtTKqyvZRl2rsG/RDy
	 KTbI3tlzZCX3Dmyfe+R01E0Eo5vOJDhAgZjtJACqjaNIoVUsAunn/3DEx9X8RtWNKi
	 JWaoO50C6MS7fNcFQAtuybONTSDNwFfCQGmkLXFELNfL3UASdK/MH+GnlVmYRI+MgB
	 /Sna2hOdv8AMgknBURAoxMs+JAPsPFl9Aeg1Ce76LESfAUtxW2QiieM9/dC93f29vA
	 XQCGYAIu1l86g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A39ECAAD2
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208645334.28918.15577160825477970484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cdee4bd2516f4cefd11c66f63632216c429fe8b162b6dd4a881183b5a29e8a
Date: Fri, 02 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662086453
