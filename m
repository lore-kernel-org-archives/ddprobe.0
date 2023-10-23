Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BF82135D
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM9sIhKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91B13C433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698087496;
	bh=PGseP08XbvVOmrduwkf5a6S5xZjbu/4mRi39zi3d2TM=;
	h=To:Subject:From:Date:From;
	b=eM9sIhKBGI7y4nG1XSlV9bJ6/ZAhkR0CN1U5JyzGBZPwhHH7mhKSfoV+tNaSXnF2J
	 c43JHjrVjKWufkBG23ghOiRi6ZSitkxC5btGVigsKZVVqK1jQyDUgKBTsb4g7wuzh4
	 r0l6kcOfW1Nm3QubEeaGlxZar1WUr24SjqZ6zLDK96oLILy0DBfoSg9ji3xSXMLfv/
	 3B3mzt5ec+Y4w8+H1hwPBBp+V+qzyOX0YpwL7bNlF0quYcxfh0PtR8A0gCEfhHWrRN
	 7yMrOhlFcetzJAc3bt40ELrnjx1l8tlHbB+GONaKNDYIWTydZCMB7xEdPxL37jAc5M
	 oSSQCSOaXWL9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7979FC25B45
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169808749644.29044.3938674914211266294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760658d528c4549f5548a6912922b73e5380b4f21fe671553711e6f0fdd5f62b
Date: Mon, 23 Oct 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698087496
