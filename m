Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8941C17
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA17C43333
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677045065;
	bh=sKTB4b8QrOEhY7AVYY4DaIC/BnT/he4shD+/gmG1n6s=;
	h=To:Subject:From:Date:From;
	b=NBy1jHn1WISYQZAgrAICSQ/yn70vw24hQXKNXTa/7k8M5G0jJdmLuGANr8QQ77rUc
	 qLSLeU25CC/PEo/NlZDxeyBVR71xRjMBTRVf3fp6IqNJBO+AfcY/72yjhZTbWFl9Vc
	 H8Wv/6uOdWmwEao8/CESVYqLfCO1f0Vbw2LMhknksI6yi112KhgdjxZ47Ae3RWLtsl
	 /BCQK70aYYh9ycz1ncq9uwlIAiauzN/U6rjk2I3HtGM360S4LP5zazGgix9vcNtHEs
	 K0HlyS6ywm0uJngyuAncbOm8/fAS9ewxxuHSep6c4pJj/1D9Bg1giMnSAT3ExUrRN9
	 BZkLiNtCeT/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B704AC64EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 05:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167704506573.16485.546108267901554131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f29a59ed78d0a481d0860c9c2aecf977b2b6b9430bac83a8d792d612b3836f
Date: Wed, 22 Feb 2023 05:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677045065
