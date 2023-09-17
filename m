Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0166FA7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 20:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0803C433C9
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 20:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694981708;
	bh=Tzyxml6DYJOc5dCKslkFlIzoaujLNvAcmRCTWv8RXoE=;
	h=To:Subject:From:Date:From;
	b=IszcogKlFU2MzV5gMNSTgjluAzO8OiPu8DkcQZjKFbq06zta1K0SkVGfTJfPQuZOg
	 DJ4x2B5UKeJv8gCgMClpj6SgtzGx+y2g4N2lPBtdrNKct/TAJG+BDRnm8t4OcPY97Q
	 gCmizxNOuD7WcYc5+cqhAxXUM4yOfMgt62D+vkxj3kLK9lWR0ruQA25O8KO/nNzAeO
	 lT9pIr0K5cDJaKf6bXurMW/JBDxbbkbPLXmsxg0hy1jX/iwO8v8wGSljN4mniYedUl
	 RUnouVYJgTS3cAq6AIAFKlo0wJ4J50+i/th7jG6KpkWgjMtspToRAZbNhyvV4uANKr
	 Vn2cm6EhWP/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C8DCD13CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 20:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169498170868.2965.4428216526980175723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93331c45b71f7479955c17066756ccf9083a4689d198936a1b19d01c913a46ac
Date: Sun, 17 Sep 2023 20:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694981708
