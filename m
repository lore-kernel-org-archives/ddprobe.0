Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594AA8F73
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A93C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692261788;
	bh=xBYtMBWlHWqlWQMMM24hJ1iKPCdag49d9jnx3yhNMWA=;
	h=To:Subject:From:Date:From;
	b=XIsn2DEljWe2qVjKadSS0kP5pvS/VYa3AOLs3IBkQ3+fDtcBmaQDiri51LiuTtCK/
	 HuVDc9CWkae6wJru8/kDM2zR5z8iU0uZsz/5IHOrAIbAvek5LdRUrFSpofAtWMOIwO
	 +s13S+g3yiU06K44M3hEukt7SNJIjhfayWouI4IEfA4G/LlTA1VJHjchPH8I0AiAKi
	 SpTLuxxSGExW5IX/ck/1oxz9Ff/CGjyEA44uKWs1L6RhuxpS3w4e7JZf45gtHH4ho3
	 fV+sGpGupZdaEM18qGxulXob5ChUiDh0diWGRM0W9E5QGx7unzJh9nj27/6V4Cn2Vy
	 NdFaOBHhb8rCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5221C27C7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169226178866.29170.13507701713162325564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73768e3ff0891fe10f0a93c29a3b09693a96608b28caf6c6555ae16edea9c253
Date: Thu, 17 Aug 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692261788
