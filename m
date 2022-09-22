Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27CC2560
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818D7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663881653;
	bh=W2VbgZuWXZwZHvyWS4WJvsOXRvkM9AVyK+pVW/OwrOU=;
	h=To:Subject:From:Date:From;
	b=f6tm3+TcNQi05rr9+lIUMpliZiG5ADuZCC7i/wFOarvnlvLrw009wA9/jHREi+6h1
	 wHIGN1ndDFOsWyGv0mE8lpbrWNI1eZpLyjMPOCu/JFPs/WD1KAsbYZw7bs5AzHm/Lc
	 VZFdMjUL7pC8/CYf6FMkiMrLP4NGatBwqqDx3fAw89e6T5G5LFM+PNeyX8Po3JHZjf
	 cAP4qjzhG8s2OF0Thy3eBB5W5PchqyxWVCdlAeLzuY2qRQyL0NNoLaAk3gQ7SvmUSY
	 7EaWDVwRcQegFwnAjnjDRz5iGzolQAXzyCDN/OuhX1zsYFuxTc/D9hThnWw0/ZulLU
	 iKxK4nmwCb+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DACECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388165339.24278.10532571160537895680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3091f106a86eeb2ffcdcc8d4a9340bc01273527b646b96fda5a690dda8933b33
Date: Thu, 22 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663881653
