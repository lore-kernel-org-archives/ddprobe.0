Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A0D7B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A47DC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672879287;
	bh=tRcv44RL+LWL4tyxMJqlmkAHupwMJwI+P5PPqCei4Ko=;
	h=To:Subject:From:Date:From;
	b=RanHkl8qo1ggQCEHOROdb4ZBPiv/pu5rcs8fvVaZoLyEgWlZw4EGSaqKNyWeT5ZdC
	 4/YuNPQxQFHhjejTk3H1aefS2HLAStC7YY//SvFRPSPA1r5g2mWDtdRbNnViO5S/gT
	 vp/K9+15h7lY4kX8Mp9rhpgvgMXrFQGEcKDm9z710amVKft1swUVOQY10UQs2CrXz7
	 j9x/gCuX+BgWzgtIKFkFWMZE6NkVGbyIp6D4Rd4wn1OiyFQGj4QatNelND+xiWjEqM
	 PgA3aQWp2Ri/9PQntd5AaBtXOFn73TnlhaqgfVY6OlWu7DLAl9sWcKLC1ZWwWt52bu
	 saCOGN3zPOdOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BFFC53210
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287928742.13654.11276885026647599301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cb2346f820f0e6e5efaf30bf2691e74e29e2e7f0181be6b1f99dc8398e1bb5
Date: Thu, 05 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672879287
