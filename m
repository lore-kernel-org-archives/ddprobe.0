Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DF2A21
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0K+oQYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85790C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703299696;
	bh=zuiFV6iIT9xw0J7NygmhCBtnykpFQdRw7u3voJxLA88=;
	h=To:Subject:From:Date:From;
	b=p0K+oQYXmcGPump94SgLdv5vOjjVHbS0wkY1pmuh3OJyEnSUaVprx+WiZa/SHCBjx
	 qVwkujl4JV4BMk4FPOgj/97iEeY5uT0yOe2ArFD+hqUNhbsJ2QpEJlkq35gS3sOjzp
	 9m2zaRZ2ji7lEitaeJc0EmqDfBDeud1iAvOWIPoH01p1rrGi0Ty0cpcH2gPr29MvdR
	 0+w5L4R6CwRdrRo6kjxSmV+f2zn+L10lgl7dda83FkQvnvzw6ccHwTaKvlNjfXVTHT
	 pLfWb3GAkcOJ/R8WGWf/9XRYeVhuMEsIFX0bRDGw+KLGp3zAS+C8bY3K1/RLULUcD1
	 wjs9EYQiA6CJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67ADCC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170329969638.10885.1420947108840222600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714db18a3d5047f0a2330bd66d4b2ca30bfcca0c4384f6516492f4dc2e77d019
Date: Sat, 23 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703299696
