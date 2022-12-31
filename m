Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78FD23B0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85ED9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672473087;
	bh=QkRY9ok9G9TlvlWygqxFeg2X5sjCW8S2Ksd7wBPuAI0=;
	h=To:Subject:From:Date:From;
	b=S3Ac1IGU/BDGXxkbdTXLWIe4o009Kt7xe6eVvyiUJflM+iZH/ealkbUblf6cDEgUs
	 vPaVXaMLz8r+F9xP4yj/ELrUp5fpgOCixU8gsBA9XF2fDVh40ZSfcCd50WlEW84zs0
	 73w7gUSkAf/ztZHelG7GDQyYuiXjm4jOSEnyl5pt1x1z0MFIy4+jIPJX5XwiyTdzRS
	 YWIHCO5X4HlhHF/ierWlr6x7xRIgVCHfiffYwlpjoNuWsBySNlZLGFJapRL3H8sojF
	 ygHViJjZjZ1JV48/gpfwKACp5e4//v3e2Uf91+YyXYbfAQYTd2zcYUJClaQAsqAxQM
	 SrX6hCBd/Eb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 712F7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247308741.22978.1960961249036763677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01388d4da4b5b68cea77e55c397e04f63a235348c4409d07930ad83c416af8c4
Date: Sat, 31 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672473087
