Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7C416DEB1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759024194; cv=none; b=GNlLw5CzG2xHaiZTbz/aliCDw0q/H/YvwZYPrKoLdSBbiJhMImYiFLoy424+6Xs10ypgUSut6f6ET7uLZo5bmhhria7V+2b3vIrMnymhaCcslyZiiOegu8Dvwpje9EBXCg6IzY/xiWTu51Mqm6qGy9Y3GegEnyqoAA4CXHvCwTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759024194; c=relaxed/simple;
	bh=y0+EU4ENg4HJZAi0yXqt5PFQBDy6rCPPRHx0EHBH6Jo=;
	h=To:Subject:From:Message-Id:Date; b=IbC2DopamLPmF9pEq8gL6E7k5n9opwO0JEsMfiSrfWJCBrsH4zQ3CliDwjZr4n+LDW69yhg0ZiFVTf06tWEMMZIazDNNoaA4HuX0FiXT7zRiL+uTt0X1lCDdYf/kmKdZL6yoD0hCZLbDmmENsMQvlIeAhz6eUWFcYhkc6GbrR58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY6QYII1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY6QYII1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD3DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759024193;
	bh=y0+EU4ENg4HJZAi0yXqt5PFQBDy6rCPPRHx0EHBH6Jo=;
	h=To:Subject:From:Date:From;
	b=IY6QYII1G5UnxIkm3WS9H9PTHEwfJ7FCnpwHLG0jHSvS4Ksxbg0DToGv9jM7r5EPX
	 77bI+XU+2ZIpqQZsyLNL2WfgM+exxNYtAuzhtXM2tmPOILT8Qg/Nvl1JPJEKewztoV
	 4eM2qwLDq7v650HpKXkJ8hxhqXGnerWEGbh2qC+Xuw0mZCrUhLKxc94XcBDOt8Aeiz
	 foiiQdKTbf9c9CqaCndRC3fW4/60y1hkiRMU84F+O2zJhwuyEisp5cmaOX5TnN24nB
	 t0P/ZdE/VeFD/ju+Ftab2CxOWzkpSbvS7IE1HOro2pSM09xFgCBseGqPRjXI/ulQLU
	 m8NUS6hmJQaLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B596CAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902419360.29299.10665316601652535124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8f9fdb583029741834c014ce6686d4754dcd9334a31a1033619cb428cc0d3c
Date: Sun, 28 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759024193
