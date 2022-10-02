Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F6215AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85ADDC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664678453;
	bh=lZ2or1uCrR4y60aClDXvPt5e45j/bi8juDeZ/n0Ho1s=;
	h=To:Subject:From:Date:From;
	b=JxqrqhaKeCjPFJYOa8mtHRdKwHTPeC1oEwvPgkbSSv2+cvoVTsw2OjBE1NoCzdamu
	 1AXYYCB/aBhBVXrUiy8IsWyW9QG0ShhOaDgNGqkhtgrMaNjV7SdXpF/LI9HNPKkYQE
	 3OKlEWuKSPR+3tIEYvYM8bqCokBL64hvRcR/nImDZIi2oFYkZhYV9sOOeKNrtxawzq
	 4VLJDWtlUNCbLtIE1RiRfMiE+82EzmhF0iF8DZCcm4WfOV8qep/0yaUCBgwLHw4o/O
	 KdbQZ2IG/X1Rmwe9XRgCi9lAHopxhbxyMz1oChEYDYf5CFCz7aPHvTkfAmbb1ig6ZL
	 aDtoZuVQAZImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BFEBC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467845341.25097.7629811905785489370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff73ff2de7987e3969f87f0b0422bd9ca7cc5cc80ef5b230a388f1d2594afe6
Date: Sun, 02 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664678453
