Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FA17E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 03:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 444C3C433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 03:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685243346;
	bh=EC9Jb6hgU/PSqHnvp3US1Wb/P+zfqdVLBuI+FODEJOE=;
	h=To:Subject:From:Date:From;
	b=MMrtmDpxD/103aKwxUbDsIxWAZGTDXGZWA1jR+QqelbNyrPsy7iOioc8ti2VsCMGa
	 lTLeQH09hKYDHb37pYHLVyLPoLCqq5h5pqX4Oc5t9up6Zz+sQ6TC32by0L9WvHwqHy
	 nQNTQd+34pqPjrFbcNSMRZymJlBLNCX8aE2oeMxqmxgwldd55RNniAd0yilWTw/Qex
	 mjSCR2izI8OaoYeAzH+dsR+4qh/5g5rx/J6ahLqOU5pL3AfPc+2Bjpld48OumWDXKa
	 S7u5XbrbIm9+3IT2tboxBKqXLrY7zWSLk81/75RLZ2V7BBUwlUKW70zFBTXtwjRPtf
	 YMnVN9S9O3uSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B745C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 03:09:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168524334595.5819.1593190445076007218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f06ccb80922ad24fdf74674a021db351af982f33a9a7183883ad296ccee5d850
Date: Sun, 28 May 2023 03:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685243345
