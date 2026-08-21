Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA0135DA40
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787314234; cv=none; b=fKr0FpXwyHJTvXj0yvmq3a6HU6PljQfmUEIN8J/b0pOOAx532FWXYPy5NatMAhNaqmVpQLFH9JzgT3OX6HwS6nx1Ks8d5JlB+1QNmA+Z6itB7hxjhXaXmC0FeEnxxcgfT6JgDzV4HlVrFSfGq5W9KGJRb4LqcixGQdr7ZOytNPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787314234; c=relaxed/simple;
	bh=SeIiUPJgoPdvz17nETRgvd+6ApZDpLKikyaz3Vl6Ct4=;
	h=To:Subject:From:Message-Id:Date; b=ZhdqzTpm8FMv9K7Jc5hjGr01fXVr5SmjYsbLba+HEK9vkebNly2Oeb2OXNNt1NgMD4WQ1Z2/vUXLfE5SAj9/fAsVP0ufkUQ6/kigmy2qi5DjVbz4bq2XJM0ysyCr6Xf79vsOQ7d+cWQOR82w78xJTIfTMOTbaXPELcrajz+AwsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeFb9bIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeFb9bIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E007BC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787314233;
	bh=SeIiUPJgoPdvz17nETRgvd+6ApZDpLKikyaz3Vl6Ct4=;
	h=To:Subject:From:Date:From;
	b=QeFb9bIUpIAP+Nw/IsjOR0RCaYujUrBVDfMPSxS/I7Oj3UhXVQQNaj9sYwsEvIKeX
	 C2v56IO2R3rLjaB3zm6tNJsG1GxKntdvY2/jjFjaGZL9syoV/vtpyBn2QIv8zuTDUk
	 7Y7g1CeDcCdqQerSE1ZmC7DyycN2PuVmcAd5gQ6PhI420oYv3uDFN36puTnD9QOcQ0
	 IHNQtqiMKY2XMXmdOJtbNe1d9CJBiqSSSDnMw/zv6QWn8Zr6PnKzhjzKQ0XescLQAn
	 /4O7U9Y9oze3vVxvRx3PdhzLD3G/RpduueyEmtrYy9OCWUNmLmKEv3OnG33LJu+pdZ
	 BeWgeHWDlm8SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2109C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731423370.5529.16407348605129053538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10798dd98bd9dc539243dcc034dd2cf65cefef881636838152876a1995dba12a
Date: Fri, 21 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787314233
