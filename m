Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9F48F4F
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 07:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04EE4C4339B
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 07:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685516646;
	bh=A1FnxzNPjmSmMVaZrfcQK2/+CY12LNoAPcFAOZSemWk=;
	h=To:Subject:From:Date:From;
	b=jbJIuEUfxv54C35Rq/Yk6/gBO84uHUC4v3pguwmjbwe0zDTiMyu/652RGxeD0FZUJ
	 i2K3Pfj7PcuCnnFz9rvzIdgd0bvFVISkTHvWmTvCFmIAsh6sf/p5OK1351fturVSU2
	 Aa/E34JWuZhZZRmCGtg/uEj8jX/Qd0cNU6diNNx9cpn5iiwrzWWMtSvBH1qa4q1vKF
	 5J/YJlt6pwbUSHy1WohluMmDx7LIhjugbbCyr6WkbCwYSeuH/yWLboH+ofl8bOw8Jm
	 XryA31p6FBsaKAdBoLJCtTmbnZiHLJYjYU711T8/Sjihy6y1od2Q80fZGZviqgduci
	 TMPScVbR6/F8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6678C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 07:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168551664575.5111.11814481136864283008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0892169e564ca6d94d3655abe3507b6ca5f3d478a222cefddc1ae9494fc299e9
Date: Wed, 31 May 2023 07:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685516645
