Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5FF36E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B0CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671929487;
	bh=wVh5v2lhpvVtNFhDYblwaBK9nXID4XQFpNpHZhhfUsY=;
	h=To:Subject:From:Date:From;
	b=dZWLtfKXLA8h3GGdaYNPJRuVaNfsConM8dWJ6DU/ExllqhJMIvTqFHrM/28w5sqMw
	 GIw2iPUGax9ETsvTuHo4YfOrRxu+LkMvlDLkDAW+wtm8HRqlIiGiIStsz2fO7cVRui
	 tWAlMJgdW1fe8TkWrEzu9FJ0JhZBMsqF15AD63Q5rVud/jXEDsqrw55sCa2PdLSu+g
	 mcCx78BTyztcZNJLUgnCD5OmVnwVCiK0DJrMwmhK1INZPfTlZXn0fPVpeod9fPSmNx
	 KiYooltbaglRF3wJwqd3OjYuEwBgfrjs+GDXB7oHT5AFU1IJRaKQh0LBN6mHK4Y3TN
	 g0jI6XVDD/goQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E96C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192948739.17039.1175695896558305606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0007c3bb6970c38038f4fc6f4f80b8d26ffad4571e3bf98a02bb5d6690394d31
Date: Sun, 25 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671929487
