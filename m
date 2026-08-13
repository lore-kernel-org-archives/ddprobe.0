Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2432D34B43F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786663234; cv=none; b=I3f35Fw34pVylmz/ynxW0eDPUJmPo8qMzlyO+hYC8RdhE+u36/PCxQ3aQSD75sejdaBOMKo63SYe1KIwCXOGmxKYyxmsphK0q+oz4U44Dfcd/yrDKsWgjv2bur/edW5rjFFfNW9uMJfzUHYvtsuOmmc3p9Qu6/bBGfh8M4r/7FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786663234; c=relaxed/simple;
	bh=k/ZiYz3jKUK4JJW5hoGRmHlMkKRDnBQJ3fsBhj2E6Xo=;
	h=To:Subject:From:Message-Id:Date; b=MQI3w5lzDOWBJ2+CFc5CzyXa4allj3Rzb5cL7VKCAbvyx8iy0ua/Dry2POZ4VA8fCFRt9sCQ4aUELZh4BdS0RlqG0RGjLC3K/nOGy+NeTD4j9Z/hqHc9lp3Jew+XFz2LBk/qI1fdf3iU2Y2K4F5atTITx1Ir7LTlBmAtOAHKi/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQzyXE59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQzyXE59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF734C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786663233;
	bh=k/ZiYz3jKUK4JJW5hoGRmHlMkKRDnBQJ3fsBhj2E6Xo=;
	h=To:Subject:From:Date:From;
	b=gQzyXE59XY2aedGVLbXqk8F8aAAj8Wx/xwxCgKl8zXGdSNkm77KFiCEZ/YwmdebWg
	 MGWzyo8tnJHpNRGywRZMcV19GvgZWut7E4RT7Ri6I975SkakO7j2tIOJVWfwycWU83
	 1w+4MH9b3gwGfDDCGHXHAQvGicuFmc9WqcGZaJIwKshE/O+ujrXNDcrHEcer4ic0DO
	 Qxh1XoNxOivNPFdSGl3u0F3xzjoySOGQj1fi2ksekBVFcXnY+0MB6Oo9iHuqNgrp+O
	 o9pZgo2jL/T6ayh/KdWEIBnzrXNGRMuBrs+LaLYs5uJlGzu/UIehavRv5JjhKOQeFU
	 aMtQdLclYmB+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC4C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666323369.983.10225505815591439803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328cc3f21810fd09bee7580ee1ed0734ee949d8b7ee2ba8feae794810a2b29ad
Date: Thu, 13 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786663233
