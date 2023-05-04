Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3BC7E
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 13:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F028AC433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 13:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683207066;
	bh=lcGdMMMZXmiE7+H1FAdEkoTm64u/Cpqh+0AUeCnYWTI=;
	h=To:Subject:From:Date:From;
	b=WylReKkKefD4N0B2+Mf8UM15dSvVLBDZpsDeIcI+qwGpOO+g+lnFP8OjTiY4QPwl5
	 kAhvGGRsXZWblXSzo93fMqwAMOqfF9/vvyUcwOpoFJbQZ52bSnAbHqE7MJdU8mfBcu
	 xPNsZdx8+ZJJCF+z0RoN6dFmfGozoU3Zf4K/Gkrt70Z+gpILogjTFu/SD//i1j6HH1
	 9Mm4OfbJM7gMdVUSVD+/hgBkeq/HzOoX6F2hoK/B4bLadsLU+Ms8nmzRWmWZitnfqg
	 aosSCQeRpYFRcJQ2aUqGw6J1RUTKrAeLxPnZHnfHs4hMcbkVCMA5M8IxfnISwECEmW
	 mN8HqLFc7Ot2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4F9C7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 13:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168320706583.3717.11053223307913147245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331e726b192e068b9d45ef2b1cc180ac74cb50bed8951fc733bb81d0b6d211c7
Date: Thu, 04 May 2023 13:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683207065
