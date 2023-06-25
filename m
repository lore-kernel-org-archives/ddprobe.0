Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8772E645
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6191C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687669988;
	bh=IDwzkW0xUKrRRo8PHB0Rwh6LyaKp7pPSbvgWb6JgMXo=;
	h=To:Subject:From:Date:From;
	b=IPeQPOLT5vQ2B9lbtdVNJVsAQn6QTZOMB5UFKVtRF9a96LzPwbOBEHqqYZWaFflQc
	 K8MWPidwVX8HpgAfxMcwuFpaXTlXWeQUDrcLUz3ef34BHCRFdq3faCipbn7yy/CoTV
	 o77tqXp9jdqQzcvWVn7eeOE8pVCR5GsBo3wld3L0KOX/G/OeQ7q2dQCp0+jjdaIl72
	 mtxjc+rVj36O3UMVgMvqr1jgGxE7tsWu3Xaex4tv0I0iMq+5/29KIWAKsP9R8T4wfC
	 l3uAE7G9I7JVEsAlDeFNYtd55Px3lPY7cew/yuVPrLafCET41TbWgEYdi/ZRtzeJlr
	 kY7f3OrfHg6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EAEEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168766998876.12785.1209119315524603672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64b32b6c77f7d9800f96cfbcc4ed5e4e58abdfe9de1d1e91a2c27c2f7a80883
Date: Sun, 25 Jun 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687669988
