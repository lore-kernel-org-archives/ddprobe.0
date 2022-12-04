Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58DA7C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72464C433D7
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670115054;
	bh=Md4a23+zDEhGWXZDaIHDmu+xTSd+pd4q14dXsOxFs4c=;
	h=To:Subject:From:Date:From;
	b=vIW/bBCGXtMqzkUEu4meC73txwHjCMovG+GaGYrmNd9o5vszj4TkpWJW7vTogk55o
	 p4t9tEMOA7WDt3Ph6JXQo28tp7Ldl1UI9F+J5Led9doyZsgfN6j+HYu+GvxtklURbb
	 YjdjOiUnfGtKFKEpwOF8ScbgmbdcZoqsJnwXhIrZ+PehQLKL+XfhMofapLxHLGp40n
	 tuHxBIxQRjXPXgp/daG3GVuL33vxYvG+dDUSq/58aeMT5V33AnQOI3c6GezdHCl9Uo
	 n/1xr5y7aMWMRguuiTT3ZSk9wZa5/4jZoW03bc3CN20Q663GEHoGboNBk8U/mUwSrU
	 WBbf6MC89GtHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550C7C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011505431.16504.7607271191695128840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832f2d11594c6e4c304458e72fd54fb70988e676b714d112a13a9d49491f0aae
Date: Sun, 04 Dec 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670115054
