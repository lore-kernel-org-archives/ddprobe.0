Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55705A92D
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 21:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF77BC433A0
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 21:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677102846;
	bh=F/+riAYh/JFvjG9BndiS/d0kYmNvNjJUIXyjreuYvyE=;
	h=To:Subject:From:Date:From;
	b=UmgpgppEUOTI6ilPenEUt1f64qZjLfGjfNueu08z4aiDIzXEzoWNfwMiaccYkRXpC
	 cSSV5UzydzIFw14n8X3yVnojFvtIeF8i7szGnlw0JeoDXc8Xhymzwxul2OMCxQ1/gm
	 qJC44R52gZGBFAxYZTrgw69UIP++emULz2nRFQaMbJt+JDQA5DwXGHbbyN/dCxkuYs
	 e4xsp6UVapYaIkuU62wNbBkllIImczts69U7Dv1LwRwlh3VppdH5KZt6hU4Ddk/1xw
	 KXMVYWWI/dXGochRjS2EwFXH5G99kMCHRtDUzcNWpOP+pCNFtPmRT4Sg05aWWoT8Xt
	 PXhm/b6lxQzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6D7CC636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 21:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167710284587.18945.7030971780267465972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a673ee57ef0c721beaec2c1852cb1a372bba03a7f1131ee1378dc2f318ad961
Date: Wed, 22 Feb 2023 21:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677102845
