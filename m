Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB7D17584
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713615023; cv=none; b=hxMiR4NtiiRDVMTl1aGrNAOSIhuzNij28Kb+YkmfXsllq5nc225w6+xA6y3XD/wVj0Dw7A02hfR1E+wVeI+WBJ6Ww8g0OXsbJEgcawha05CEf2pP23hU0To59aC9nhzG89FhkcHf98Ai+5wI/+lsPB63EnDZLvy3jcO1LMQ+3aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713615023; c=relaxed/simple;
	bh=ZTzaCr0u5uXC0QP2vFiJv+H0R41Ql/w6+RQglk+GNhU=;
	h=To:Subject:From:Message-Id:Date; b=LccAbPUdnmIF6lu7Hcdc+TR24bupmWikwZqRKHV28ywSvGy/M9kBpvEKkfaKr5E1JpCAchDIaEhn9QUZVhHlbKXNDauYf4jEX+cSTXBxfAJxLY8TZZJSY1LbHh4gop/m0iys1wSKQ/3i5YNvNgAv1jShV/4+jRMv+FhUlmB/wVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7XHUUxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7XHUUxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85F7C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713615022;
	bh=ZTzaCr0u5uXC0QP2vFiJv+H0R41Ql/w6+RQglk+GNhU=;
	h=To:Subject:From:Date:From;
	b=M7XHUUxU2gMnfnNKpb6m54kxdR2s1NCXx+msS1qxnCxsUSF3UvSIorUw0TF9NUt31
	 NGoynAtx4gMhOgq0froipZZP5JxIGVvzukpGZIwBnk44u/rt7cBOkzUWHTWNWbVScH
	 iNTtJTljOZIgIVKbyqOgHawO5mkn3qCNgBIpkjNccXXgnidB0I62ewTp9BKev6FKkB
	 Sm/spfTakAifZQVOkPllD7+XjNCMWCVNWQIDGIsvlQ1TYKkgFGgr8jy6wpFAsBvXXy
	 osrj7ZCO8Fep1FXysCEvYQBWdFpTbLddlVAW3lzVZZxYj7a1RAFcE9sgRH3znPiPjJ
	 R5RARfc3x9GUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEEA3C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361502279.21041.15417304328414205385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05e5aee02a10a424085fb16df87ce4d25d3bc1e8353baea43f64b16d0b82f3e
Date: Sat, 20 Apr 2024 12:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713615022
