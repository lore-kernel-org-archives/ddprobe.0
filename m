Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED00A3DFC9D
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774346694; cv=none; b=IOPyD8h4PiZgzzujcBHYjYwIqhkFKq5IeeRZnMTJ3FBG+f2f3zmWn3P+OcLOSJ3LH00NXOIHlVatjxSlLt+J2EhDtx9aDwZH+2xBYRDF0RqBV6qUhLmOnZmSu9z2egbspH5sn7/05CRiq2EUuKav+ZsbbkpC4ZUCJWXGAF1Qr90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774346694; c=relaxed/simple;
	bh=ay2nOkRvZW0Q5rTKs0510TxRvCCUIT8t45m8BLZ9noM=;
	h=To:Subject:From:Message-Id:Date; b=QNbS9Av3+XnjaxsTRAnoC35mbgYdao1dlsRu1g3oIGOv7kqusSLtT1QU0AjFJJkQGqNSsjWKlfdsudt5u5xXQfBcuWNNrapKEYbM5u8Bq5K0b8TCPkgnZbFxSXO5rF3mJ2HqfcbWhNSt/sXrO4Oj9bbpGlW2oZN76/xOdpobh10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNYYqmxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNYYqmxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3786C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774346693;
	bh=ay2nOkRvZW0Q5rTKs0510TxRvCCUIT8t45m8BLZ9noM=;
	h=To:Subject:From:Date:From;
	b=rNYYqmxofWt2cWA+x5BBZgu5lLy6KdX+EoATXemoTMkkBtfhq93pyOehTo1Bh2Jl1
	 RYBtqKvMmOxOus/3jMHNPC7QO6QLyaiB3WVbs1mdiJdXyqHd/6ejR12/ZwDchbJJsA
	 6NWdeVr014DX2aq1551KxdicnwyPVyZKJynYmOdrMLZ2C6JzYBCve2n8ncjo0m4YGq
	 8wiXYnBgN9fxCKDhylCRbv3BRlBUqhLjjWc5NCc/QzID6fDlnFTy0DGbX/wi6e3Lw3
	 JCwxvTKFA8aJHjhkyuQoMoUbm3DI13gK5gZ+AXibOM7wvhRTzHYxpJp8scjHDSZxGr
	 xCFRzJlna4pUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC2E9A75C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434669359.5281.7808260515852879431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6cdcf47de238b5dcd8e966f00cb227e4df2a91739981c681704baa16f0ae37
Date: Tue, 24 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774346693
