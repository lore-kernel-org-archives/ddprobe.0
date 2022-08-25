Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84474C74
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EC6C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661462452;
	bh=FMgVguuft8RYh30jvCzEzJNTfbpJlp8aWsc/4Hpjm5c=;
	h=To:Subject:From:Date:From;
	b=kjN6thlsMvalcTlQVpXEwDgUseg5ozjvvdyzQINrN946nCxLKve8F5//RpVj+msai
	 zFwDUGUeVldd50SA7Wt1LmBKumZNrGyvxp1vuAjWGZSh96QI8wMAb5rFZ8d6XfJjSZ
	 BG8KAHCjG1PocaYylgEnJSg/HoS1D+VmBUD8pc4y9TGd78l45VwhEjvvAyFR02wrcM
	 wHdu7DzcaPuqHX/TLCcZltk6qQ39IONVHtzC96+I0romN+YN6dr5RiHFhH6y3aDzU9
	 qkebaD4wFF2krgO4sMlBIgyCAVSmXeMUUyOlBxmfNOKxzoqGQB+rupd0u9E/KafiWU
	 mAEdZmtlKJ3Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF85ECAAA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146245232.6203.4138465354255323375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5f45744f32871b7523d752f631098c87064361ce1a6075da77f4e7541814c6
Date: Thu, 25 Aug 2022 21:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661462452
