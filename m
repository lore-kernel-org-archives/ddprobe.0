Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102D6223DE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766299434; cv=none; b=GDw+EgJULOH6Rk8JHHWQprwhRF/+JB0VZHftob8uli7rHECDy6fQsbdWlzEwhilRuc0RqcA3Gnemgn9Qr58mXLtniJMxzVOJSy1hY3LlH0khQT2BLXRfRhWl4s2GLHxE3NVKRSozuA2B5naRiO1PJnXw1IziBYIrLBQF8TdHasY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766299434; c=relaxed/simple;
	bh=/zqWVXMgqAxmMor2fS4ugYnrRGdJUD3lNCd30gtfU3s=;
	h=To:Subject:From:Message-Id:Date; b=BtZk4v5y6NIG+jy0oWxM3/x7QLQr34/DE6p7I+ab/k+FY/THDnQDScbNY52nk/OqVJ1xitt/yOJyNSZKaOkpK5HdH/XL8UErHLAYWiG7ddVwnnHUbxrU5q35b9iv3M68zgBTIDGWGuNiPTGC26LKLM+SwCaMCRBzyVgqle1Gnss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXlnB7UK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXlnB7UK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766299433;
	bh=/zqWVXMgqAxmMor2fS4ugYnrRGdJUD3lNCd30gtfU3s=;
	h=To:Subject:From:Date:From;
	b=rXlnB7UK+mVx1298spym9NUgU3tzJFN/YdpUuGKgCp/R9GRLRtO7ID34HEahxL+d8
	 r0tI6yYkvByYTaEEqADdOcsU/6NkxkWgvU8a2gPX+a1JtbcIIojvA+C/1wvPYWIqTu
	 +SiT3hOCD4Mkowm4T6/Zfr34AqPlYAadIhaAv6RUaShP10/eK7Z2+vXBNhFYFbnwdC
	 qkWiABxKjssGHgefpLb1wqtvMDE+aCCThTUvP9uubLlIFh8t8w6c5TJ2df8JiclX74
	 +Fm4gNP4G6TFp7nM5amNv9cyEt8OObAgbg+h9nLHKi/V4BavqDa0infxmPXNC0UeEX
	 5jRjTMD8nqcvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F841D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629943357.26448.13772962114370729221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11279cc181889f73bdb525f2265611f1f031201172f31c767414d158d7beae4c
Date: Sun, 21 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766299433
