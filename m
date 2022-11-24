Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D110A3205
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E313C433B5
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669332054;
	bh=kStWSntGFD2AMRacvXg+bgYG5AurlEyz4QmsQ06WsQI=;
	h=To:Subject:From:Date:From;
	b=oUCNWOT8nc8AwKEKS6VLH7FyPMgjZNURzzflprHNBD6/36/d8+UR3xNaOimxMeM52
	 HuUdwLv4VDyRmcVuWiMuqfpOeGHQV/+DtdR1pw31Xgk3e5JoNOAi4wz944Her6zPVu
	 pOn98T6RyTl2rXr5OLO9F3CkTczXcRnvhPAGrdwChwNEBxwDljimJbmcI6VVRXwgTV
	 eKa7x/xuvbOWL0/dCh3B732ZqrKrr8OKMc2wJ80EDG2T1gZZEGbVMe+aXDEGDz9Ljd
	 PKV4HgUJeIzQV1KyMpRhtff/zAEBQNQtQL9ISVzHaLdIkpW8UepvcBDzjgIwDGJCd3
	 gFgLB+XGfWMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52684C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933205431.28840.12543853432565723273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e355c77c22d2e9d6bb1c3e7b4394bca98241cddbf756fffe8aae3199c1ddbd3
Date: Thu, 24 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669332054
