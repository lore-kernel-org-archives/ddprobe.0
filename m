Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2464517CB
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObpyibNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 855A3C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699073296;
	bh=akh851Q7O9hxfpVgt0Kf9SlES7D6qiKQK3MvWEd1lCo=;
	h=To:Subject:From:Date:From;
	b=ObpyibNcW/vV7z7rLxRCsD73pKuq4+nsqFYJ9R0NNTE/B4E5IypeYBqGyMcyze+2n
	 PJXrSJblyt835/g9rCaI8jhjG2k17FJQ7sESJYPDCDYyGgk6QLObrfiwLD24sKb0P1
	 uQquNsTu3KTlclGHm/yX1ZmrHN0JJAlbt5N75srtcXr/FtIBHOmosI58pakRTtv0WG
	 iiB0MVKQ/+SG+aJTdQL21BmJThdLKbCNmUR03GdbqG3hpYheZlmIGJ4XBzxHQGgGmZ
	 2N4wgNLBsEfD6xYa9JbDSiO6P2tD7BbD8ZDygqG/CeENtzFlKx9Jx55FzqzQDHRZD1
	 GCIXXlEjYlBRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8C2C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169907329643.25357.9401776654875323035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ec11e9e235900d43d68193bbf139d00083569857b57c0556b299bd6516db57
Date: Sat, 04 Nov 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699073296
