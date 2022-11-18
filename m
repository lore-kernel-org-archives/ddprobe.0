Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D047929B2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72224C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668765654;
	bh=ofWi7SW33ChbUFkFXb3wpO7aUXy3PmK1tNeQGanXxDY=;
	h=To:Subject:From:Date:From;
	b=iGYdP6V32Ktqempn4/iWaquCZRdnHDTfb4tEa8RNqH2O9ddSah//gjG+QSM3eI+et
	 fD2xo/8tatLuOtmlIEhIaYilrCwySRAYcg7iC164LW1wwO/cv4dAaB1G1qLTSi98iT
	 WCDAAIeZKPn1jtZ7RmENn2yGdesp3fyORUp87aoEtsXz2O1c81iHiJw12rFcVCy6ry
	 m3sJTruBw5xeNDPmLQcP8OjAzncytrgku6SQk3IpZSKnsfEPDT/3TmAALS8X+HuQTe
	 GAG/QzfOb7S1jiLsaOEAtJBBS8rWZA4Nmaga4UPCd9JelNz6oLsO3DgOsFFOMwCdlm
	 GZz6beKxzhidQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FB1C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876565433.14271.6601450859977732042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c045faec03994ff2468cd9f7af1dc9a43429d2900e8e64c9da1ebf4ef7ea363
Date: Fri, 18 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668765654
