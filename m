Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA0E10E3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 02:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C155BC433C9
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693533848;
	bh=m3HxUMA08N6c0mPfz/0AO7lr/vQKcsW/uTMCQtYKir8=;
	h=To:Subject:From:Date:From;
	b=pvEjL9Au3exu86GHsK4lEzfOXJVcWnukoH+K29cS8l4k6SktU0AmHmh6TkmmtkRSy
	 eeIyN0cprKM5vAoMgubRztMscyfFHs3pz0F/eRpexYfkDCxm3B3/F8JrF7JAHNy7LL
	 K3l/4vwh4GrvvNWjV94OzKyOLbHUpHtCYweyuWqfsZC4lpjRw3z3iVAZWmRilkU1lP
	 fUnXEVnccWlAok6UQjqyULpENwU3Nf7heYRfF/T11TSLpdixo1sJR3kWwmL2iYKlC+
	 KsZAZE2DqGvm1fnSPfpb5FPKyj/cR0KRR+OBkJROE/BRtr2kYbH3bmViy1G2y+8pL9
	 PvHe/cA/+O1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4273CA0FE2
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169353384866.2708.10382184720383990649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc46d2bdedb8f8d8891202c256754dbe30c2bb8ec7a760b4bc739c0dd8f6aa38
Date: Fri, 01 Sep 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693533848
