Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C332F80C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A0DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672835487;
	bh=2IMId5+AClNjTIuIfTLuaYHikgujuQLz2O7OOijyx+c=;
	h=To:Subject:From:Date:From;
	b=PcDX0eXEr0Ri8ZU3IQrp9lqJyaGcTMrxL/tnvFwBWC2bI1UKqXLf9KHxy+lFNIQ/0
	 dezwjBu3dMrhVU5aV19nUJylFc6egAIPPVEEsk5kQoMQWTTVNLnarCSKkKy5m47Do+
	 QyCfrJh8s1/2nRrl5MCZXm88oKqIzfU2a7cgvVK2otYarJU4DS7v2MIdDXhngPW4aA
	 IcNq5YpT/nmDD1hzTks0VZRluDLq75pjUBqE1g9a2tQ9jjp8zNfEX7bG0lKn5ijMoj
	 WvgG8PY66FzdwysJGdi+nrBzbdsy0zt88D7VzgT/Sk/wldXWK/Zd8UMVsJX9HFw06V
	 h8lDOJO0RDs8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0FCC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283548737.2074.17133785562756663796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43314e36b3159e9dea9a28e8e02451cc825b726280525dd06b550d24291edc9
Date: Wed, 04 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672835487
