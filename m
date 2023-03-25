Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3662574
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 20:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1FE36C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 20:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679776326;
	bh=NDjMPgoMbHBMMKWCUJW/nrNxh7ih+NBx+N8FWLQudA0=;
	h=To:Subject:From:Date:From;
	b=hAduVFWHj1jHypbElzJkxbZhVQAn0kpSKDf6ib3jRrTIycATApCUG3VMJ5jW1l1cF
	 ij7nuKl0zkVT9LfHe09QAmitl2a/86P698sIX1pPmwuutRrAhFYGd/S/tMOngCQ6l9
	 lUtSI576On6GHlIZF4rnte4YuQ/O/eN5NG61+pz8SNcVFR8Vc6jxqmft6sKHrtZZ0g
	 Py67bRqh+wb00cKrKhcmJ8UpZId5c3RqK5zqVX48h0zNLujvvrCdlRuEm/GBzTzORt
	 ODW40VaIW9B9r8Bcueib1jrP+7OCi3cjtx3Gdwsw83rBSBO5CVwc0CFAwHLrXEvptJ
	 +7fl05QmVwJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F35F2C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 20:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167977632598.2847.2561961191780266499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1aa0b7a3ba5288c6a8455a500fe75b40289f674189b0b7ae6450f5f223b600
Date: Sat, 25 Mar 2023 20:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679776325
