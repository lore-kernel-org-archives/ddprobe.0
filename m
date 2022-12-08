Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9005258E
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7631DC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670505654;
	bh=8Ss4GReulh4HjszWdh6f4DtGt+FZO300o2Par+EiaCM=;
	h=To:Subject:From:Date:From;
	b=FIXhJSU1yDPbdRyGQhaRNW9oKjLCPlkGdQxz35TyzEx0gPu9FdSEOspSIvfIIJnpA
	 a/jHYHmndXEA2T9aT1F9/XE2TkxRdO46dCPhMIhHV3IeSHZ75Ph9LPCVUCtPgwuzM1
	 QscMUhBAg5v5z4e5BZ9gDm49oh1CPzj0iU/qNhYGM52ECC5zy8RB0TqIZv9AxBg2Ct
	 d2W+/6hlDhD+XIdEGaPdwxWIYi++5e6oBPPfHWZnebMn6MKShgQjhsrZhy7rMeopMi
	 kUWzfwIKCrogxZVsjOoLhYOrg9+HIeMOhagbQ9HZpPLdNTFJ6djH0bKNX4H1XLDDX/
	 DERIzeNyTqDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5748AC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050565434.27605.17542759455022681170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265ee3cc802b2bc08a32cb8b9e6b5685fbb4f7a2e9c6c7002b60f1a3a8e26518
Date: Thu, 08 Dec 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670505654
