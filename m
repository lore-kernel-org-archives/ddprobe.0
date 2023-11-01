Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5E910EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/0/2WJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9C4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698820696;
	bh=a09A+JldJUEtq/ylmp16jgvDEpckIuemkPF2BuXIYgg=;
	h=To:Subject:From:Date:From;
	b=k/0/2WJZJyiya8+xMT5YkRKKeuSeezzjmJqbGF6K6d5jJ1jCswVD3mi7YYZZal/nN
	 rx3bP2PRs05Asq+f3S2WreJat2lc5A1Hy9S7KLhzihAnyyNnzcLfHKq26OPuchuZYN
	 UHdh1j+AxepJDleQPFEyIol2lkdTy+PlS8+fXLO78V/bW5ElEhLOJvoXLWtVhQvYWH
	 eQE5myTKWSUSqEtiAAhiFZMmz0OAc0B17RXx48qXktME+tkp1+R6oY3OA+wOddFOEh
	 3vRv8ktTkJ1CYAy2N1ftq0Qr1G0rhmpaY3YnEN5hA37yNr8fY0zM45RM9C45Tts4Hc
	 SnViGR61h4x2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7879FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169882069648.6394.8019087438621457318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905b846f8e9ec0f02d10e0f5fc999f156181082439d130b65647d43bea83f236
Date: Wed, 01 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698820696
