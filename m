Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F4A2940D
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753432794; cv=none; b=nIewM5Pyn9eW5oxyAPeICb0T8Aj66jj60InOUeyGqjKuYEv7ynJqWBlygsTF8vQi+HWfxwf9/s/cXx7CwqL5Oidk4Ou9phALiFyfMGAROapDPbY6iYUVc1to6G/nKAy80i4rIcuRuac+86zai+JHW2CLCH9hz7qR5EGjW91ASWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753432794; c=relaxed/simple;
	bh=Yto9nw7T9oK8cnWJm5PxCfjvq5axUzMkO22XKNoDCtM=;
	h=To:Subject:From:Message-Id:Date; b=FY1Lm+a7RykoVpQUv+NJCbGypmoTUyV5UzUSHCDQYJmF4BuYFPEq+L2JmYzXSQEbHkpq0av5a2Bcsi2ZGYcrL2aCM1mOTdyAD+Px005i/5KiiQ94s7FnZDO+RPwJjdzrbgUdasrHKCzZBVwK+4K1RvtjD+2X3/JJ3c/4ufXQeuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMmn0t7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMmn0t7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E42C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753432793;
	bh=Yto9nw7T9oK8cnWJm5PxCfjvq5axUzMkO22XKNoDCtM=;
	h=To:Subject:From:Date:From;
	b=MMmn0t7LtdPhe1zsGoD2z1Tl/CqOGe4yJb0HM5EnUbIJDCE9AgYbT3/EvVWrRYo2g
	 tlLvzKwJIQYCB8M7R47kuW1Ezutn+L/Wjg55mJw1ytn4AasPxXDaHN66B9UgZ94hb0
	 oeC9feV4YToL5Noi/z1lmfymiPtMBp4H3pLjfLHUo+jP5YUV7sI9JDwpkJkOt3tU6U
	 npykD8RAcqYjK/DC7Mb/2JJldXGAy0dGpufPFCDdrhVRiHBayq2+of+mGWShXf5iPv
	 vOhx8Z0vXT/4qSOP0192sbdfqYQnV+f63OHo8P4HH5EmfcuuVF7lBlyYkyZ/G7pxEe
	 Z4ewBto93EX1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F063C87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343279357.25944.10003936266366337144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64af39cd73bd6b03e639b9f2d737615fcfd57d2491c84bfe59713fc291cb521d
Date: Fri, 25 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753432793
