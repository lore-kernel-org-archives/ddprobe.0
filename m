Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A347A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 15:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655308739;
	h=To:Subject:From:Message-Id:Date;
	bh=4W7YX/gFYcivS7qqgxCEhTmFrbtqXkxHH2eAEp7JTpQ=;
	b=Ke1bj/n0ici4zgiodeevwY/MSto6Btpn9zjxYNq4fE7LhfvndngpMJkdc7kvKpNX
	IaY171ogxmTBkWL96UZeVaMLVw36h7D9kVSOKk8w/F0tHvaqEF4Oo3eApJwvFUNg7lO
	S0FypDs99EXya+2idhAHwhYFMAiLMn3WU1r8WHRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655308739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4W7YX/gFYcivS7qqgxCEhTmFrbtqXkxHH2eAEp7JTpQ=;
	b=NfyIndSqj7NqUQJaA9C56k9fgbrMOCqMfgL0ssjSS3Fcv5G1PHfidFfkw+AN9tBg
	dIoT86SSl54mWrZIvxjlqRKGLApdvuYp7Ddtn3qm3pzr76N//H/OaAz7DeC1C75oznE
	4KYl/Uc5H3rjxjrePurth1JOXkK9H3GM8FsGcmTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816816e27d-80c55330-1313-4733-8080-2a1cdc10e00d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70f2eccd0634945904696e773cfb433f28f7c75033947ce364191a711a1686bc
Date: Wed, 15 Jun 2022 15:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655308739
