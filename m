Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6CE803
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D548C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665891054;
	bh=0K31PfLPS/JPbPamb97+F4gzjJsxSceHyt53/SGo0Ao=;
	h=To:Subject:From:Date:From;
	b=WfSmiBaJ3N98T4hA+fVcLj4BY5F44QkKNcNVDOmvOMi6HQ0ZfavYhbIlHWcWQ3YIq
	 ue5hpHf/GKxO0a2MIjiHQ51IBJoF+r1h/OqYuj3yo3O11CjBIyzT9KFpjyMU40jDAu
	 RVpyC5yoUTWhbHCksWqQ9VHTyK8s422xR4BlAt/dQx8hpT8BIIsSgipX8UEs2cscEl
	 KOS67Uu2MM73Cc3zSPdJ4BoraumXKjKV0tp8GhEGiQSExweggGtrIKF3+K/i50ZAHA
	 zkndEEHXBA2M3+4Pw1BstRbFIQ9mo2llC0udeVJmadZi2DF0CnopkqON5A8TVoixnu
	 JuC6sJhTuwjJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A7CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589105331.26829.15806387175603039611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbb2bc3ef48b8b25b1739b98bc0adc164e5bb6c9e2c042b947f9d38194c042c
Date: Sun, 16 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665891053
