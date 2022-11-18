Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC327A473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D462C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668799254;
	bh=eOhJCrZL9/ErmsT4iceeQ1ve2bSkwL+x52r+KcY0tYg=;
	h=To:Subject:From:Date:From;
	b=LNP1BjLrjDzw1XNjAyl2UUzwiWuUmQH/Uxw6WyMOoeVFHgaEeglcRlKu6UqfxDVXb
	 qr8IVWM9qVrryLl/YuAdCkuoS4DgzF73dAbGerr557TDE4sgU/Iaxi61QMkes3eLlx
	 ifCAESVX1fy24MxLIiRevT5wg1ta7yEHmJsVniaKhYgAsxyy6AMgTqojLiOTUkMBVw
	 Fv5sYsxoETwhqvA14zW+dFMe++I+9WX4VEoOV3TZbr5EMygTRcnhH9ziKKmuDfT6Ag
	 sdCtcftMrfB6btn0+w5R6q/SBreWlcmV0RSkzkOuMCL6eIaml0ZCA4ADQ2tNFB2RoG
	 lAE1um5OOdLTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5E3C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879925431.13227.7898674483655869606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b359aa0cf913d07bc06c3d38e03294466f30d4b57e56785ee83998588ab8cb
Date: Fri, 18 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668799254
