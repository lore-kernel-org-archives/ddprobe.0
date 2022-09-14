Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F1B7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0D0C433B5
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663149653;
	bh=tpRcgCS1QzloUi7iUKzr1sNikkuWfTIpE1SQ7scRbqU=;
	h=To:Subject:From:Date:From;
	b=Ikr9lHdOY7RN0rmjkgSCkgTcHKgkwTR/K1bGdVwCZRBSAK6iv4XvkiD4Ug2SD0Mbz
	 TouH+AsG2Rldoxp0VuoqLeqy51cj2hppDpD9rimRFlps2gV58TG9ZXM0di4ZU/X/pI
	 n9pdiFDb9VDS9op13lRjCbrFo6vvASNR8Y53fI5pmlHoUMTlzvPx3JpdFzRdHJwo5H
	 VNQlVQfJfRDk/NCJ9b7HBpnCs3OUARbip0aQ1thTmWmC0WC/mlrY6TTlKrqUToWvS7
	 yTRrcC+nu7Xd+r/BEFOkJbWUkYRK6rfPUIcq6jjAHHVv2OS+eBMEh4Knk1ObXVSeB1
	 mUb8SbRwAKq3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D0AECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166314965332.22420.1926741661859992646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47713cace8b2296ebd6d12c7ae4fcb8bdd0a9bb4b18c84d91217dfc508ddf956
Date: Wed, 14 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663149653
