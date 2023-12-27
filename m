Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1C9446BE
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BExWyM5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8952DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703680096;
	bh=gZ3109blOM6gZZDVUu6YmOtKvfKKwV4EGf7jmLeh5Fc=;
	h=To:Subject:From:Date:From;
	b=BExWyM5xrC25msjnc66RCGkjfaeaD9z+pejNqENVjbiwKqo2v96X+uuXe0PrrLh2Q
	 gxCngW14Hn7lsrK/6NqsCUU8wgTnSucOmpo225seCUV5uFk/mFi5xkr1sos0KbFEIf
	 g+BCRf9saS1JzXK0AuhTlBje0MzOVB/mo2OPW7ge1z9iaovhoQ67HhdP4PuFPbP8Jr
	 nF96GmAr1N6AIRCJvVbL9zJ8KRE0BnJLHR0hL9r0h0jNqU0OjngpCfudu7CfxRBMGP
	 Q3CM92nXD8tHFQ8NexDeOmulMiZ7+ZbZUnEua0voyamDFz1laZRtzQ/fp83Npgxi3J
	 yV5ngy5u0Tr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C7ACC46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170368009641.19948.1989019181593427222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eb1de2c0340b2c53cb287aaf8e17488e12552f9b8aa15b31440d2797de9497
Date: Wed, 27 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703680096
