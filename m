Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5376463A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6437C433C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689235748;
	bh=mf/wiLbQPTexj+rjlmVSEk1M3B4FQSVukCDlziTjSqo=;
	h=To:Subject:From:Date:From;
	b=Xte8vnyYMnEiZHh2BuGHS4Xwm3tfvEQhOmnic3IIYKDe0LI+eY23jNzSBArc0QxXV
	 whE/+Eh36BkQzjFViDLoYJENpo6yOskMWRb1w0LQ7EXnvgXlNts8dux9wnk/68/nad
	 DF85jzt+VOZTVpyn68gtJXzlZ8oxKuVFvBiazcD7L3ReBgWp87j+X4QB8n6hDskSrC
	 9RevqDwc2DQytsJIUUrdA1aB7UfIfANPIP2iqh3uVstP1b3e8ulcrSDQiVmyYMYn11
	 VMR84dxB5TAJQCqZzs7peHWMfq4eHVLrheE4NzrK+OgP62fD1ObrBAbvRo/0/+TbWU
	 sUvSCf9MVH1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE01EEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923574870.14467.6499737258874200882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecf5deb2219d801b884ab2054c7e6e5266aad296672e57841d33bf7d3c4f9de
Date: Thu, 13 Jul 2023 08:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689235748
