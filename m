Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DBB156C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITVQYudl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB9EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700774296;
	bh=StIjwCE8vYQvPHw5saHL9OLEfS4j4avv345N8QU8hKE=;
	h=To:Subject:From:Date:From;
	b=ITVQYudl6U43euTtnD6OXvHyXeT6yPEYB0XY5mDwXRw+LCLfL6Yej/Xn3OZ7dONgm
	 fw0EOyB2e9EBlM/Ysr6UWO36wxbxej7Hp2ha4OKGWvpm4PRfCFBH7TzvcQMpLApFQc
	 he8ERQ3FThUAjAF4d6SMHs5p8dtgP2+/cqIDTFUW7N2b98X4MTJm2XLMzemKmd3DCl
	 J5L6Wk6yZ/Sp27xv7Ym9fwyFomD1t+r3h7c1IsD3zMw8KnIjjg1dbVpJq71tllqyd+
	 EZJVlq4jWhiTLvB24FcihNHstn4TMEXy0Myb6RFjPC1VJamvQ/H/YekNCTx+hxivT1
	 PI7awE50kbjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6301EC5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170077429636.8078.16144981964673333280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43966f39352ebeffd5a83e9ee7dcf91acbac37f6f2602d4f8b69091d088a9dbf
Date: Thu, 23 Nov 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700774296
