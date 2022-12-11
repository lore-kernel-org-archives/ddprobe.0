Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0AFE3236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8932AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670795487;
	bh=UVQPR2TW4VI1x+nJh6h1OL+9cB2SUo8HP/PlsaYzmCA=;
	h=To:Subject:From:Date:From;
	b=RR/506tkFqy0TZSlviQCW65o8Nou9MvHaCxAP7E/YhMYR0SgFtKSOwfrhil36ehe9
	 bY4lNAemr+gKcYLpY1+Yy04VEj0jRGd4NckigkVB2+AIfOr6Mm/SkVTh9bE1heJatd
	 RPeF4yBA0inR66c84hkhBLcwqZ9/6av5h7Z7REphcFD8Az1zo4KuvJpJb6AclWRL3J
	 JExazsXQ519hgjcGRGKZY3UQpG4gSzHtdeKiEku86fmo4fCIhWSp7zSF74vg999/l9
	 AmforKLXQfxvk3jD2JLvFZjOp+OoRAkFKHZFWuC0EswKPAq8B0dGEX2blV/mdoB+Vw
	 Mgrro5r4DhjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EC6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079548741.8678.8218489568019836681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659e922511a7278b9336a056a09c8df1903b3f48c99d50a033deda0ffb994f6f
Date: Sun, 11 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670795487
