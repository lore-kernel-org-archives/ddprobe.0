Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C538824
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 17:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CFFC433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 17:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689441668;
	bh=GMJYYuuBiP6580vKUq6l/hmQNBcxWKMVnEnzqMtr574=;
	h=To:Subject:From:Date:From;
	b=IPe5eldVYCkQfyHqljcDUNK63MwXpzH5wFTJXpMIViL5b6MqBxATaOWqCfXLfTJRS
	 lkmNyXYRLshl2iLHKOxPGleow/aCdSOC99fBCd8mUP9QiIl+W9BqWLA3bogmdhYlTM
	 fOht7uchtJYtxPoRR/6RUtu1h+bzjaSf7I5eQpQ3w0ZHUB/tYKjSiF25bq0yheLEFD
	 b87AORSxHFsAv+HZpdvvTaotJGw5C2Kpn2tEh1XXjpR2+kAuVd5ijHH4k0btSuMJt4
	 LI6ymRQkWPDj9JmFf72PIllNN74N5gpBNgVKwNe4gGUYWw07LFRAWbnCxZ+3y3kZEH
	 vvBosv9bDYN9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DB9C001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 17:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168944166866.23053.12590365460466433976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf497716d0bbad6a7f68e6b4839a96f1b394174bccb57ffc1892c42e3e3b7fc
Date: Sat, 15 Jul 2023 17:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689441668
