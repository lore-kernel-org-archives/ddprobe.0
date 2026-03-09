Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07611364950
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773087894; cv=none; b=TdCpDX3YBuFvbhXBgexQQoMDC7IXq6tj3WptJ+X+8h02T6XRYMFdToGUWvqNProCxF+SOZccmuNoQ1v5vjuVgcZmhQWnISaKI+v4GSJHFAosBoUh4cH4dWCrm3uMdsi9xjltKbKxbYNHyv+mUEnELv4V1IhPh0lMAt+e0ExFIsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773087894; c=relaxed/simple;
	bh=ixZYn9Gv6JTq0OFZR/jQJoloeybVbt9SbVNVxqcxUzQ=;
	h=To:Subject:From:Message-Id:Date; b=tldzxOIeFbgfzTuvY1cJSFSKbHGQ8NtIXAgOO4KyV5Z4ieSASdnbatq5HWLlLWV+vQrKHZ0m5vWDkSYtRnTATdSvLYTI/nTs/R7sEvWoPGtCqAdI0mg6TTOpdHPdjYWRtxbPkoPEGKN3VAqe+YEIKr+WCMtd3UIXg27q1J1g9GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy5hSKv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy5hSKv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF03C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773087893;
	bh=ixZYn9Gv6JTq0OFZR/jQJoloeybVbt9SbVNVxqcxUzQ=;
	h=To:Subject:From:Date:From;
	b=Hy5hSKv0ZQmQasx/kmBOmu78RftXNPinCuVNDuzW3d3Feel7iCY6i5zY4GGto+iA8
	 B2Cu3mbRA2hn7fzwtDfrmR0ZtWNv3XcO6CW0b0JvcEoCDZAV7BzoWk51rtmPPCJ3Qv
	 lJDIRTt2aT42S2qwIOxmU00NL2MON+VcCFl+cxmYYcW3rQVePnxKJvn+Xyh5gYJRSd
	 UI86lWK2rs4i3H72f/OxMRALjPzWpV5YSZD7879WfLFmYQpVu40t5urpOXQwnz+up2
	 dJupOf+ioC8iy6OXZwdFJUmHkh+A5Z6Ol8WGRp/+jtCNi8pAstc9oqICVlnn7MrcgV
	 +GusCExQhaUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF3FCA187
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308789358.5967.7966720437347377659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ec011b0fe24909651d233a55a9518df5201bb458dc622670ceb26e54fe2166
Date: Mon, 09 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773087893
