Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EDF19AA57
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719511463; cv=none; b=ocy8Z7njPLHJ/a2Cm6BmdfSO+4jAAaA3rz4D5lpc++jgDSeK3WPIJDn7yEJKfL/JVIEzqH0lb+EeIK6k2QbKRXDDz+W+l5xdOBuA4MabVdC7zfdrliQUxd1w3c5KauYxn0+eP7kvqjAegPGDp60N9OFr0Gma0u+0BJ3C3tw8dLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719511463; c=relaxed/simple;
	bh=k+uNPh1BI9/irVv0lsLBoriDyDBYqL4vh4KI+5hd7yU=;
	h=To:Subject:From:Message-Id:Date; b=qX1MjxItyLyhdC8uWoE0SLT3/JmGJ0K8TcQuoganymb5SRPIxqZ/D3hy+3dLbUqGpL2LvliVNLQ/F2IPOM8iwePJpe1hZJpMoEKVfU/zVIdKX3lTFh4en6TzOtlmloJpkOtNCL0HSXphSFaa84jJqJNhG/k6HxefDGVQ2u/c5to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGAMSYRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGAMSYRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF20C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719511462;
	bh=k+uNPh1BI9/irVv0lsLBoriDyDBYqL4vh4KI+5hd7yU=;
	h=To:Subject:From:Date:From;
	b=uGAMSYRnSCPoG3+iKZCxlqy7WR87QN+J2pqWDLqf4tHjW6bImNSZexmD8Vt0BRT8A
	 +WXaoiQEfhMxXLgm6qosOLUg+Dq7c2N3FQYIKwXSogp5i/MFM/j+KxpmUlgjULjg9Y
	 ji48ehmwo/OFfG6LvtTISpGcMXPzo7eTFxeBteQHuS5FNYZBO2hEwiTswYs7KpuTdx
	 EeGBT/LSxV2aDYnn3yzOf+FEbwNgKgOk/jUjbHLba+gsQSze/2/sF4C0o0Kkv0/32Q
	 U2hmzjNkQfsx/d+ZJ5DQu2yQIyOpwtPdEmUP4WIMk+ZNXkZkHtLfDGv+QuTrS/QST5
	 K/iW1MuquHUew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0C0C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951146281.18824.6376198336760703183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd892b428ee680e7359095d564e918541eb8a4391896325af439ef5eb67c74f
Date: Thu, 27 Jun 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719511462
