Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474502F2A
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA618C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677176705;
	bh=OJNZb81MtvYfpJEOtpJLg2eCepATlB2ef0k3UWIy2R4=;
	h=To:Subject:From:Date:From;
	b=MqTWY/a6gM1WYmHrWYKCWbMzWtXc8R9gG6/aVkeongpRZgGNNxNKcke0CnBXA73Na
	 AoZWYUHYjdwYWdUezVITSiZqwJtaAXVDLq53L8T7TDWUfjzs4p9Zf5MueoEl/ikkpR
	 6y3hXCmEHJy+c0wm7gM9vhOjiKGbySkJ47+3cE645OpZmZzgHEgw3IzEpm2BlWZUwp
	 np32/wJAaWVI455ZQ8h8JtcCXNEA42nwasCHucqAZaUdw00/PVsiOyPvfrK92VVT+t
	 fspGB9Gz9b5BTr6pZ7uUo8uzp7X2XFcMc9KcEcl1hr0Bkp+yHZ9Zx/+i8H617PJHam
	 TqkX856vF0usA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF38C6379F
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167717670576.25827.10426329746841697997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c82e07ee32ceb0eebdbcd7dddd6d69f4d1b3c16b19d5a5f503a40184b18c825
Date: Thu, 23 Feb 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677176705
