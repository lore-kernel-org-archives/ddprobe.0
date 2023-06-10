Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A740E17C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D4E3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686370086;
	bh=CLjyh/hYiKEHESHtE8tMhLvJPIZGX5gLE8bxWk2XzRs=;
	h=To:Subject:From:Date:From;
	b=YrP5d9OL0BRyK8LyjTAr/fuGUEAZGVSCDWAf08yBiBLFFfF6upmW92/fvqzjxPREc
	 KaYwUdW/XWaRjNFDKu7fKvOgKrmbMaLwMAG9L7ZdoiIY3lhE4sJWHpJ0dSzjfcf+8p
	 YAHQi7mMDiK3aVdl0uDOiSTxV0Jha19kpzB25debsSfA8gXE7sGh+S+0f/+J67u79T
	 drZ/Ea8VAGFMvpip83qtUYkJ4Eghn4E7oaoXtMppcCknNoISVkfXpPxen+odXYpEIx
	 /6xFZiL3xg+dfP1/zyZ2oIX952L5JZWM4ssHdnsjTBUH+VArKoOMxikB4ZHgoYv+/p
	 VPU6C1pFxKUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9F6BC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637008580.6321.14428482959095497572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b721aafee765ec8288c5dba5c0e70c718ac1f085c3e9595b5e6a58f01c5bfb
Date: Sat, 10 Jun 2023 04:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686370085
