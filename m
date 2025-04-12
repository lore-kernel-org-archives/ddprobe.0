Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37F41F12EF
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744472993; cv=none; b=tlht6CQFlSs4i+eo/mZYs6L5+JxqNWtT5G7XXjjwDvzCZtnKVPs+Mm8G0VkIaoLcmWVJSb+2EZWGX81vQ3oK6Cu2sBCGqgsRgmFngBYRV/UDV9w6IPnxlq5W5LnEtLK7SLDbDB3hUYKOwNZIU2xPXN+vkjET/WheQMdWkUSUnuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744472993; c=relaxed/simple;
	bh=1hrbXmc6XF8HElKX9eSstex98NEZyEFWOFZmX34X2RE=;
	h=To:Subject:From:Message-Id:Date; b=jR7DxfOdMsCrY7qPy4IJAFGZUUmGm8VyuRDOSIXoj9Y12VVx41wXETA1IAeHe8mrPIJPDlXXuGVULIffajGJ9ZTpRsKx62vpbcG2kXSR4roXIR3dJf2hc7J3oW8gA7HBpik3XNfRYW2pU1daq9Rl/ayurSIQadzW3N39EWipmM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaSL6KgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaSL6KgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744472993;
	bh=1hrbXmc6XF8HElKX9eSstex98NEZyEFWOFZmX34X2RE=;
	h=To:Subject:From:Date:From;
	b=uaSL6KgN8n5pmVu+0hM/y7hkUFk4WdpJEnU7yTr0N/K/vUorQ4gdbb5Wt2Y9P8s4t
	 uYq2BpbDF6Oan4aIFMG9JOvxF9mao59lwkBXQlb4gELVT70gEPsIdN3un3ytnElC9i
	 3Ja4KvgdVScPxdopUuEhbfLAl3GIMcBsb2XBcb4d+GA7FKgI3WrtRAgkzQAhTO/pKz
	 gRzQyu5UBX+gbKFohrglJaqtR6XNGrZ1yqUSBmgz4ArQYMZqKPaHKlrYKNrN0RNe9h
	 ilJYKLhBg+c6q6PN9m6Iwlu2+rSE7P+ztpyq8Fgh3mK1GPvXl3xxdMgxa0JlVvmA/9
	 J0BOtdvDtHOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96655C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447299360.30192.8224409670643299716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83784569beb4461189292599ef0e6bd502b9756552f542f311c41c5a49458f3
Date: Sat, 12 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744472993
