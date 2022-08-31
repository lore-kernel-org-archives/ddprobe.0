Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60472580
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BB0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661955653;
	bh=qbDhz5mN0BXqb2WbvC/7cq6X5L4n9/NJYm+C9c7/wro=;
	h=To:Subject:From:Date:From;
	b=OSEU6Hsf2r5hJpmlDVFYE/Kt6sXmQDzYhWi1Hp0GQG05gbXp7uf2HjTnshL+Q+jl0
	 jGWGg4QXZufQIh4E352oQ1xV5pt98Wm8UaJe6Y+IzmNHFLYr5kViTtpV5TWvfzzwka
	 1QwH40fokLbJ3QH8NIoYcpk7pV1uakxUCX7f1Dvj4TWYut2PNbDL86xfS3WjZR1r1J
	 NI5MDJE14OBAE8xj2tuy1bloAX912L7CO6Lt91PL/6IeeLFgrucSho4zsHLmbb8LSU
	 uB5arabeQWvjBI4Jyl/8ng6rhceTEZAWLV3OFcbQAStHAqG7F4T13bk4PsnxBRz///
	 lWfIG3L/ZQSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58186ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195565335.11590.9204409482930479614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19c28cc8c471ef41b9aa8947152eccb48d5b6850478fdf7829772455e9f7e6e
Date: Wed, 31 Aug 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661955653
