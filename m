Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03134173
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95766C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673138487;
	bh=GQPcto+vnjrV//A2YWisLWW12ZrE2aacQAGq5Kd9mGI=;
	h=To:Subject:From:Date:From;
	b=G0vAnA3cfmYt8cUqVsTV1BIepP+TLkZigZoM4PXhN5g36YCsXu5QP6sjBb8UbrNOb
	 D0em+rM7NvyuOwAcrx928qjXRxafMIwBqbJSTGI83g7D4yQjzIBrD2HlQK3XViP7Lo
	 D+fdQ9dFLb7yWMP41EJ2R9n2DlMTPux+LRNFYtVT3rTZ0eDrunGZwdUnfV6yPW+0xQ
	 2oRRBh0iVTYDiOg2FWyQpCNiKjpm77/BI8DjOZdU8NIkg+VF9B+5IqP0Tif18blmHX
	 i4FNTAzuaGxF/o+odLlvTC08creV+UZfO0UC7YOY4fCm2KcteN3XQFD3vuVBNISbkn
	 lUPMDh9PfgZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 730F9C46467
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313848744.22469.1667122094327620650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574b68d6484e8357579f53baa61bdd66af41b929ffaae9390dc6fb938d6403bd
Date: Sun, 08 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673138487
