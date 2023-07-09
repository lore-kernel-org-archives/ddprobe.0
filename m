Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9D810F2
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CCAC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688869028;
	bh=vf1cs0sM+dkVIkZrbgdDWObY2SAAXmyoF9JCfID2Klk=;
	h=To:Subject:From:Date:From;
	b=itdY4i3E1UVXykRnYYcM+qnyAWqY5VXHAyto9p0OaqAJ7f5MeFJ7ZbPVQslkhltb2
	 ArJ8/fKN1RXstIBi6U6K1fOjWPN1St19I+nN+955igM+0Kq/y2AazGu62LVybt6rhn
	 3vRQK7ew6eFTJoAN9+AT0tMfo0hdQLsKY09ARVi/z841NKtL7ZHnc0OK0wxKgTLuAF
	 PQybIW5fptX1jfyhoNb9n4EMKIpHdlDEctIkBxKHJuXtMrqKQBEJEgG0ygH2G68tUD
	 YIUZ07aJcm7Rz9+6pFcWdeyQdHR1KwCSPO9/MVcsiG5RbWFJ3MzfR/3a8gBQrDHLdx
	 9iYfi2NPfJiDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E5BEB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886902873.23218.14904350322564588084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943271d4a80ff2086c20a1186601dd149b344a6b3f3dec78939cbb9e147a8637
Date: Sun, 09 Jul 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688869028
