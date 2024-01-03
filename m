Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D954A13
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lonDzf7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FA7BC433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704248896;
	bh=pBNTkysMFUQifCnAFMD6sfZyL9f2zSzOhOzRLWcs3Mk=;
	h=To:Subject:From:Date:From;
	b=lonDzf7iin8b2QU/GQ/LmMeMRLyh7o0vWfS34fA8BYCCqYEbIzzuvSEvX/kFufO1x
	 PYaoOY85NR73LxtnBBfuS4RyNRp3aZYKWZ1Y4i6oZAE/y4FFYW6dFxw+qRsFeoMYF4
	 XlPXBWJa/gCqUGyGaUd5Zymkfx+7eYTFlEnxVXVoEWFfRZQi+FfXF3Iew9xxnMEGER
	 bSdYAWXuHOyEu1ifIdD2z9aUjSuvZgXZe42mWjLUIMPXovSBo0kfnnbT7fhKsTpbWh
	 rm2BKU75TZfNZAVXcJvZ7l3bAsBleLZNA+0VoOwSCf5d82XW64fYLCK7RisGDhG3F5
	 r8VDlFkP3i6Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69DC1C46CD2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170424889642.2250.3679625753767780707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8201c6c7e61c2cf9f6d65475c3b0a03c4945fee97cba5e20d4f5db29e132914a
Date: Wed, 03 Jan 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704248896
