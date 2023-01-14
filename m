Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF90962A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94048C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673659287;
	bh=s48GfTokpxPCsQK0PBUXxVxINHHEVARpAsc3HIXvSIw=;
	h=To:Subject:From:Date:From;
	b=LeKUSlvUQRxGSqjWeNIsvMFFJEwpunf0wFEEKHPTMYOb6JbEF4H1VZ9UNdTEcfhO0
	 abHRn52UIRIElfYiGEtc2n6Jr81OChHKoUbMDxzzTD3zbbai/BX/EzYdeEDS5h5YwQ
	 P29GeXj3toIMXy5guiRKFKYKe2skeIRBnE4UvSt1NUwdLikImW80ueI/OBFTPYmicy
	 7hEXfzm7xgIAs1LzmK6Q44vdqMZjeC/ZfEndgFj9Oj+Td6obJcAThtM4Y7/AyPnG5M
	 T/OdK8wvJhJ7IR1Yvma9nAe6s0DbD9jZh0gaikhQUP1n6A47ybWUmLZEYJ932I6Z0H
	 A3tzM4OLL9FZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674FFC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365928738.10350.2795395918913647860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3833355eb05b9a775f5414ffb61100ba9a76aefd3feec8132e24bd57f4442551
Date: Sat, 14 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673659287
