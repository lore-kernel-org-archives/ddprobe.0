Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC3319B
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 04:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC13C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692246788;
	bh=TOkLnV7L6zGH+NlIZQvwLwkaseV0HzFw4HUMCf39pgg=;
	h=To:Subject:From:Date:From;
	b=A4+D507l56ayC/2AyUc9U4weiaNY15Oaxg0hhgf5Det0clprF7WZ7+DEdhPz6TDAY
	 4aPsFBQiJAcs1GK9lJ/eC56X/FY82ZZkilBlOuE2hZkzK5OS7Lg358A696d3HNGmRR
	 dsw3KAZKBjUWG5VSqSEtJ8GxW8hJs7hE3GQR4e3Wznsy5e/Sl1DhuIaQtFaH9P8Qa6
	 xBZLYU60ukAGyIUZ6gR5Vu2c0dYflWHt0Tg7DJGuckHp52p9gvkG8dFWg/Xc8ws3h9
	 aS4Eeuxkd2jafn0TsPVpqvjrLkDt3xZSEjKXdMcvaPCvNbk6q4RDO9s9Ibalie20m5
	 +riTnfYEk+Ruw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F8CC2FC0F
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169224678871.22961.10392048208555985616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888b6f7b50e38d78070d9a66592760f104c46595587850b745854525cf66f64a
Date: Thu, 17 Aug 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692246788
