Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53D5154BEA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732697753; cv=none; b=px2bWoGPx0Xf8luMxJuwMBVeGKceCHGi+3yCDgtafg4FQ9K4OIhsrxSfCOdWmRf9+xYKsiNrG6nUftfGRaEV6lGSCFQ4nP5THtombesqFw36myaiCFz1oStaxrf35cn204pgIIdpdCkiJjpY6Ku130xKVZGc4IY581XQa/XGoNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732697753; c=relaxed/simple;
	bh=K1sJ58ibGLu3GkLQURJN1tCo1rqvD0VB6XwXyt8MpZU=;
	h=To:Subject:From:Message-Id:Date; b=jkpOVgbIqB46FWSupsSM7dC2wMW2lBcbZBxJmad9XNFVS1Ky2SskxsQ8mYsMnFH6Yw7UGlWi7warNWCfC3TIoSsOUnqtjUhBWBcEn/wH+VmFPmSYdGum9c3AKQA0lWJ/ysE0s5OMu/7J3+sodtzLIoODtWpxbsalbInVXulh6l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dU1HxZHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dU1HxZHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD07BC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732697753;
	bh=K1sJ58ibGLu3GkLQURJN1tCo1rqvD0VB6XwXyt8MpZU=;
	h=To:Subject:From:Date:From;
	b=dU1HxZHvEKjhgm4ezlUbP7oYiInIoa8Axid/HrzSOAM6KyFULv644JnQNK4jy+6b1
	 MBPw8YtTTwakIbYc9f86BFiI+h0enGo4be+9F/2YPNLMKrHAR2REXt1NJ4S25iuw+s
	 vkJQlu5YYMHcH163BPia7JVrO7/dG4eQAkrDyykMrIhPPPejX01AcuJQvHMCVmiL7u
	 Xq/klKbcYyS/kvHk4LqIF4orPG8ebhsoB3XgzaBmHyuI8sot3LlsIx6349zK1AcleA
	 dHqjr3/j/NQc/hcaUEl/uVmPDXcTGHotWxGuXF9r5V5JkKCIxZ4CFjtTTNox/eagra
	 0N7mTmBYWIv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE47D609B0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269775362.29596.14774026349505044947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a1619e5dc2f605197112386495d7a826633bbeada5d325653e663ed27a0bba
Date: Wed, 27 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732697753
