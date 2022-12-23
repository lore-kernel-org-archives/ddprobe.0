Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E1815BE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AD5CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671764487;
	bh=jGkUjpmZjlFqg1pyJxFjTM/ImxsMfOVT8RfvyfeaCuQ=;
	h=To:Subject:From:Date:From;
	b=JWvuDDZtQOiKuiIOxokxRLJeUQcsfWb9zsztLRNUrwk9X4//kuNftYDN4dx3tJPrm
	 QHdEJxMCtfca3xYld+shM1tZJuEaKt6yT9Y72sL5a/yhzyzCF8tXhXdfpCsQhy6VYK
	 HIpwseLMU0tfkBfgj3d4zRzC+GTZlvoWqIEW12vRf/N3H/mt2EDfO4WN8Imv416b4M
	 Zb3RGiFfnF/qD3jAy5MfiRjw38+1AxjSddxC+Uhfcxr6qSZo4wq36kTC/I55e0877m
	 XbjgTul5X23N7utQ1ZSl0pbkbuFeC/53UxkIAgG+mQ0eOp72aWQw5B4E+czrOqyJBJ
	 hd+PyfGbo0JOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620D1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176448739.13792.4867930520024865970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8065809c076df98fe9828fc61bb9c71b5eda4724fcc930802046d0a40095c9d
Date: Fri, 23 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671764487
