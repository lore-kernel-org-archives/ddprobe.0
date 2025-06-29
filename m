Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3A112B71
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751233794; cv=none; b=VV0Kx1EVz0OCbt4mLZXUgWNpMjXmJ1pOU9aJiWkU2hkxR5sOYQjvgYTRugLDrLLDhd9ZAq+Uoh90jyrOsRqAsNXNJ3KcioajTdKYwdoWjFZ+magTPJs0tDbXcVtKvwIXqHeB9zW3x5POHyw+AOhQ8zbdCzP5Mvf73CJQYjb7r48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751233794; c=relaxed/simple;
	bh=I+ByppJoJq0N7NNG6nn3dPciwe4LzRcbo5cQWWtKX1k=;
	h=To:Subject:From:Message-Id:Date; b=m/VF+a2sSfHqxrYUyECsKVet96np8ZgDJs77E2pDv9fmCsj2I4QfaSEFU5YI0k16j6j3sdcGOiorz3WpBbRayrzNFnkNDrMnF2/yTEz/mvCTUl7Rsy1g6EjqpBBbo+BD/+hBIwkbD/qNl9Wcl1+s2Cg9UhNXEstVqd7Jljqh6c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4LghGty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4LghGty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A720FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751233793;
	bh=I+ByppJoJq0N7NNG6nn3dPciwe4LzRcbo5cQWWtKX1k=;
	h=To:Subject:From:Date:From;
	b=s4LghGtyF2JS62bPjMwl/cMMj7OHw2IvPgxJVZ+D1+Faxb2xAF5dC7n+O3+rf5ACV
	 xCf+UHund0/HLMANAb4xb3F3gvDZyx0ue+YYCzEG+aI3+MpnkefWtJqF3vwoV3S3JQ
	 Won58oYgkCMtFdKJi7M2WKi7I4LN0qSKLkYXrngcBs/XrjHmNjbYB4XU82kPfEg5o0
	 QynNyuNpMXNxYYxoSYbLVMYDvTVtaaXOpLjRWcuuWcqLkklTG+ySszGmKb901zfaRQ
	 RWndOoG50J4G/604BixWfVHz0pYfNqnN4MmkG7jcSdIeoA/yuWNwAycqjOTNl/S7n/
	 3npHLWfKc37dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A6C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123379357.10205.1771224735089173663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb1fbd10d4494cd2ed64230afce800ae2fbcb74045c938df0bbb8d2e0839fd1
Date: Sun, 29 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751233793
