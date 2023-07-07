Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD7717ACF
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D831BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688768228;
	bh=+sDTH6Y/J56dYdYOjPsafrnXlUIlkZjpVyUZnRliF34=;
	h=To:Subject:From:Date:From;
	b=aQpzxtTovSWjjVeSGYlPaJxSUETULtCCwcFecpMvSuIo0GtK016zz7pidyXaZ5jc5
	 XOuzA4OKNFWzt5O4Yoz4515V35JX727v6tq9rmbsiagZBb4crH5AIq7E/NMaLqLMDD
	 B9FVTLjuFRGmX3NWp6k1APyo2OdE/2FGpniTYBGj4mWRbBHwLDnAP4gr7ElOVFkAPP
	 N+99eIcXc8R4zbDyCvNbydSC1zPGydCrBWwg4Vu8m6XhhO+OhHeDf3qw8U+CW9Q0DL
	 4DM5Q8DJSUTjg0lOWwHE5yUOjCCyUaOEmGF9z0llYFj8+1KhGKEaDZpI70RwX1d+KF
	 P73uyfa57MNzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D6DEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876822870.8844.17661169515969154222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855d47f7195416507d9a232a3e5b19fc531b343f3094629d311aa29f3093bb6f
Date: Fri, 07 Jul 2023 22:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688768228
