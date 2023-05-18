Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D94611C91
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CB7C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684402565;
	bh=CsZ929uDvb6hISAceIh23nYn3sdGG55MXQx7wFHCtmA=;
	h=To:Subject:From:Date:From;
	b=a0QYqmuDqDu6oPxqVrEevADW7U1xN4gBljJhKGI/sUh7zHBqIs8CsIZrcE0uMzKaY
	 7/HX9G/OstGXWNwbUGGyqPejjZ9LKc07E3eO3JoHENQcIsAMikMVula8r9cPLBOdSJ
	 s90fGQUsm7gaEgQRvgWjrnk8PA9EtTEXyGYdZhtC0jOgDj5wiCi0ZxqCJBc8iYsB0x
	 YBct2RuWbzIWNX/trIWiZ7EzbyCxHz7Clg4snLDppluXvb/00KDLhXhaHf1AapUW2r
	 JxEvlwYIQ3qKjh2G+v2+KpX/8iZaf2cU0K8+6yjYxP0jg2yDisHBf8YYrtgekpuKc0
	 PaulQGfG1UVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5EAC77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168440256576.18569.4313031140735198694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0320539f9aed57e9e60b2ed5ea49a5d20583305b029cd53bf196d1bb94cc16c1
Date: Thu, 18 May 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684402565
