Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3606E1841
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6972C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680940265;
	bh=7RgGfcaunEAbdw0O1Df+ngmdiR5Zn1jZiQKyfDNLQZw=;
	h=To:Subject:From:Date:From;
	b=R6jtybt9X53SCkSDJqz1uqWrzBpzykRa4dHiUPJ3KdSvxYF5jgb0Cc4cK0d0NBccX
	 LI3koTuzoBbYidF6mDoHwZ8EA9ktHkvVitJz0FGhqvUNHoBfGc93KqkYhh5u4CrQB3
	 Bu9hnYVRg75OM9b9+vfFUlt9iqBWDexAaZyqhMxpOgb8TjBI1FpIlOe757iGrUfGVx
	 TtzmqlDTvskaKhG3Slyj+/0y+RHkLlVgt4eDkl+h4zCkzsKojbeYf8sTXjWjIrCV7O
	 khyCguWoiUTWYz6ifl8Qna7QXuAj6jW9Oi2tiSqK4rPoWeWtlJkY6Lp0EYf/2vtodz
	 2mDuXY5EPVvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB9EC77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168094026577.5830.3752119596122961271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6f0b0eadfa414a8a04f94d0295955f2346795f9bcc2a51da75e7a8bc2a5e1b
Date: Sat, 08 Apr 2023 07:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680940265
