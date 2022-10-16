Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BAEA56
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D19AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665915053;
	bh=kKO9KXEi9mZtQ0NUkRWH6faMBXsqoRqk1GVombI7CX8=;
	h=To:Subject:From:Date:From;
	b=WzCxvzf1BdO5XGL0X7839rSedCeOdYSVjjBVcaUY84KIW911vTZHqolHZRTpHlRzX
	 QJT8fuMpf+lAx+uvoKLnztdJC82/7M5z8+5pcsUYlQ4cwdvehHPpCJ/YywYpvhzvkz
	 5YNJeb/kvtXcOlFygY3+mQr5zL+GLSjfxTLA5GzPKVWeBSj6UsepHIs/ZSr3Ei89WO
	 fv/BxPOMzEoenXh7cI0k59pQ1xE7zm3xVxBbAOqB68bfi4O8Gg6PTKGfC+nHoa2HvU
	 pQDEfAGjoaXDA7JCy/3Ci+GG858eXW6foumOCjorT+bruusTZCwUfa9BguHz2pn0dQ
	 MnmOHjNMte4NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F515C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591505335.26993.6617220649388200400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdc4caeccb548f254e700ce87689d68f1dc8ba1249abe9ed477e1ac097ad32f
Date: Sun, 16 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665915053
