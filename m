Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333B6EC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 20:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D55C4339B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 20:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678654025;
	bh=Q+TO8twUurg/ET9XSg/lvnfo26QfMLrA/fO4b6cmSy0=;
	h=To:Subject:From:Date:From;
	b=DanY8C4LdDxS8hSNtWb8KgcWOCTCVNl09vSxMD1vaef0Xpip7hvJRdRyxXA7NkWNp
	 kG7EuXZPBj5oNOxC3G4ro2q+Ys/TZeW8InhQWOo2gZAMj0WMK/GkfSeValfXJAmx8P
	 irAZjauxa5seisQpeUNlygpFsPFI+R/ksYZkux6vFnIcm7OGmGVrA14E16Z9Rqbs1K
	 jeqxhyd/mnZ2D+AjgKXmdC6/37poYQ3teZMt0KpxX0r3hUB9NXRRGSSjBeQ9wMYnpO
	 5KHi8nlcJsJzuJ7HAgnBPI3exeHLiAARUxE8gdxViwkqO0Env6+kM4JQ0njHcwX701
	 kTPdKNpBfe0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA68FC6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 20:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865402574.9173.16598067291656386032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d4c3e7053718b65f9092ffb3597c670e710cae68ccb16f8e3d96e027421660
Date: Sun, 12 Mar 2023 20:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678654025
