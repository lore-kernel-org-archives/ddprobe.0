Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBC2282F11
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772748894; cv=none; b=snN76xrhEN7DUVl5mUASavoAYELtQVqDV1kCILfXnranLAOUslq9zT5K8FwcuO9mFpRYf9B9q51/M9aJtjusJsB7bThk51Cqp9RKW32+ZmCDI1buyZLoXUi0pDH2zWEGxyLEbccL89/1N9le9McEIR0f5+wbxdjfGpUvTo2hjEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772748894; c=relaxed/simple;
	bh=F8SAGmNE2P3TzEaX+8U9mzYoXTDCxwssgte1ww7bwio=;
	h=To:Subject:From:Message-Id:Date; b=Iv5Dzl36iYrPAqTL5DPNDmMnhyHiDU7jWEpD3QT2iA4kwr+qx0fP2Q3y12FtKsU19PHKZ3X/O4Q+6pV0HBfi8qKt8v1yyb2nTvL/Zf1lEkM+seXBqb8lhd5T+Uvil5RKdxKT7vSHKH3+dpgLTrtm+Po4EXDxdNCv8Po2ukQBxKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8NJ/S/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8NJ/S/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2281C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772748893;
	bh=F8SAGmNE2P3TzEaX+8U9mzYoXTDCxwssgte1ww7bwio=;
	h=To:Subject:From:Date:From;
	b=R8NJ/S/jy+dS8+BcTk2DAvfbe18J+oT7sHS9izeDT2MddI2XPqvfcGy3AxtsFx8bH
	 avj5OcfE0dnQloLRe6TYAojnYLE+wWQ/JelfxfWUrG9FLWz/cMipJ5UquFqevKKOvF
	 WQgLcx2QZgw4WJSaQ0aDqdpO/u8VxN16X3E/luXYf9qD3AzuXHtMYtuuY4z7Z+aul9
	 gfgMlJw1fdkXMNiY1qA2fjiee0jdVz8iq7ON3p4v9/qnWPjpwxSYXinBNY0f1BS6+F
	 zNzCqhKgYMAxAZQkqyyyj8nSsxwWKtcPTOdjs0laRMiG9KViu6GFB9SDvQBuFferKd
	 81mzi+nwVgWpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91841F513E1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274889358.3774.11396909435841390255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9aea80080081902e44657a4fff1d82ec7581e60a6be7a0e3e2ae29828f77820
Date: Thu, 05 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772748893
