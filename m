Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C6C168DC
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjAyshMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDAEC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701626296;
	bh=S5/e5WbJQhU26bad/q968/mGDuAomO3BD8g0V8qY1T4=;
	h=To:Subject:From:Date:From;
	b=UjAyshMFP5cjj69+JyfEe/g4M7x9fYtusyyDAKy1+Ds/kOlFGe1kEKXbjF5UWmo/b
	 JwTnVXiwgWLsM+6Fa5zoCiqoIXi6yFv6nnql4n9Fv9mX62NZU1ppCOXC4+z+R28hl/
	 QgMyrJiU9VOFX6rt2bjpgN4W07G1Ar9f0rCCuR3wym5Hv+Z+XJeRavbIEcTv4KAszm
	 8C2bC6cefPQDAksBJeGvvOW1rQ1Ll5PNQnZcjhpxthqtajOYPpXDihBTkAhBpnDNtg
	 okIFF6EhWzpkRrNvVdbahJRS1pyuWsqZ34eKEPMxh75cm2M2woN8gsjMrVnh39wwRs
	 8L3SmlGETatwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F58AC4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170162629637.2157.1832663406701726260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90cea00549cee01fb9b2f739bc52913f6fcf51621557743e9a0910db122357bf
Date: Sun, 03 Dec 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701626296
