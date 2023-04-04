Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9F07F3
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 08:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03994C4339B
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 08:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680596226;
	bh=B+ihGjrsmRkeURGQ/w8c6D3dcebWkCTYWo2AhUxkR5w=;
	h=To:Subject:From:Date:From;
	b=qq+fOpFbvxFotW/sqJ1BEaydw8uxX5CtBFP4HGCrsvlgsDXuEuHQQfSVIm0TIK+zf
	 kN1oHAF1Seyr8G0/6Sv3/0dTYYYDyxUPwTlc2lExj5lpnv5tWieaAl6cyyAgX7uCC1
	 xUQ2iUbCXPGPfRUazOalRaB5ND7pur7Ao1K6Gj/eW4f2/DXgYRD3oLEbhAuCcW6mOW
	 g8dgszgtemfdkADLtLbu/XLya9O9CZENz49cXoBuWwr4Ld1kOfDT0EAVXnP5DMS5pe
	 STCwQgjzOl7UeUcn2A87XrZkNGZ1MVQl06/Fud7NOiSGvrjLtTwDCYK94PPzH6exh6
	 BGUmIPJNgE/8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4386C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 08:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168059622585.10459.10597357981133359271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf9dd7234ebbfd7517df923906be08294464f15a6db0ebdec5abd0d0df081e4
Date: Tue, 04 Apr 2023 08:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680596225
