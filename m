Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C4D53A5
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A080CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670871687;
	bh=uXkC2T5m4rTBenbVCHkLEAxJcKlVO8io5XJmbIrggKw=;
	h=To:Subject:From:Date:From;
	b=MFQLyfkmdsEatwHewlBbt+MyvF+uYV6tqT6jHK2RDuy9aG840aYppWez5UKj3+pCY
	 Cj0blZ8uq9dNuwzJpdZq/KlM/oU9A+HCY1ZvlB+NLyAp8XQo0WT1UmroBNbge5lz3I
	 zgNnXlmo6s2SMZO0uquvnUi/CNBLE7DtA5fF3LJu0CNW1xqqb2XBF3TYcxfU74o3Gc
	 NSVLTjG1/VAM0fYr3MEzr3RmKQJkUCGvN7NWIk5Bil/NEDCgc1a4D0UmqEbkpF+kDe
	 66TJslIgiM/TfyY0NsGdmJFNRFuHawGkamz3cjVx6u1CdpsSqNoa5JCKiNM/8J7asm
	 fVCPi+WKRO3TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7682DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087168747.7567.5677845780474406504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e130a8a46fc7c4dc38ae49dc5c1848e02f6eb2db84dc4cac63b306c4a7be52
Date: Mon, 12 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670871687
