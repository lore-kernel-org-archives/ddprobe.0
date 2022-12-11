Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045BB1386
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670744487;
	bh=Lxvr9O73176ggMlu4P0NSck6AvW2QOpZJh8A+jJqZkg=;
	h=To:Subject:From:Date:From;
	b=NwBmfZ261K3IKu9h6qHc2CFg/wHNHnSkhFc6a3aDAliMsiCs/+xczPAm6n3TjzNG/
	 4YAJLJgvrAfq62vr/ixImzqktlei5pbRCDFG9nGuWQKwIGAwD5ZwmBEt7woc8S+LWv
	 5orXZiDKI02deZYxIOaV34kn5LrXYJZUcMI3WpSZmgbcdF/LacO1twaiYtCCl0Bmpe
	 wrVKDCSpjs9YAlNoDVm295wp4bhav1PSJCIlAr1oDLP+015Eex9mxubR02pv21cVx/
	 mlLzgZlJ1alLbWlk7SrpLLiAYuOtaSGyH1xydc5RNKfJeZgRSj3oO9u2aS7oj5YvIC
	 xdxikwRjsnczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 812FCC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074448746.23152.4821940686419690214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cf38b3208395f955ffef85d6bdcd07054da21bad4b22ff40213b471673f4c2
Date: Sun, 11 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670744487
