Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42EC8480
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CD7C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667582454;
	bh=anpAZlxxjhGkLvcqkY/z/L1Bvb9sT+H1ISA6XLbnZeY=;
	h=To:Subject:From:Date:From;
	b=PGnYWtrAExT7ofAIi7zZHYkiqCML0t/6gTEZHBzrDB9VWvbbTRkBqzYhxKPip8DBW
	 a07QWq0w41QnV0xmXF5U7yMjvnEy4s+ykmq3GoipVAAwwZHfej65623wqusdCfcskr
	 NDY1PvlEJfs2J3HwrmQ2sxF/OTICcVWWWR9yEIJVqHxyZlXv4rWD4EncHHF30HPPEE
	 2dpoS43e/Oofq9q4C8YfzbCz0F3qnV6XOq9FHzShDrhHntnXpfWrRtnnNOohyQRzEZ
	 oLOHR3vbm8LPooqXplagwlC4OsECDe9rhZ6khs8+TreFTGTmr24sn2UtmAWJvqPrb9
	 F9gZaPVSGyrFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B5CDC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166758245433.6471.11462273261865416582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90792da92a4fee007ce665b66a841a42f672f8646ffe5956ab0f1b8f8e866ce9
Date: Fri, 04 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667582454
