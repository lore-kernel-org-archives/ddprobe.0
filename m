Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A72E1BEF98
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736751354; cv=none; b=fmXYSygFrqvbNKYzjlDvjIt7cPfM8W+0as0RGquAEJoo/hATwPpVfRvJrxMJo1TfPIrhAQeYLDEHbUgGBibkppVm/x1+tsGXHfQtq3ZxeENDBmEjdtQO2SKmrbcAbpo1FO0oS8vsAIkI2pJpnyj3yEElPphAc80hYvRU7++0G6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736751354; c=relaxed/simple;
	bh=8zYVjaETZO4XJheYfK3gJo4aoUNKt2PimqzUOZrZRwo=;
	h=To:Subject:From:Message-Id:Date; b=sZbH86aInVm7iXO5y3NLmYkoeb3r/BgIX2RzWVCzW5Uw4d5AZ/d0mjN8b4Y+2nBaHUBvHksPunsxyMW10DG4cNGNB4ONgiTrBCYH7iCiwf/LKWjy0zLWGto03+QAfUW5Xo8fX/Te1OARB0nog5BxaeHM5hkSCCo39Cgo3qd9cZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtTascut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtTascut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFFC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736751353;
	bh=8zYVjaETZO4XJheYfK3gJo4aoUNKt2PimqzUOZrZRwo=;
	h=To:Subject:From:Date:From;
	b=qtTascuthbM33jSHfWeq+7GwoivcDsv9UDR+etixdnElvfw/VF0iuH4v/qBOeHbUS
	 5M577LaeNdl+0+0Ab+JeoLvmjOtjFuOkoOsdIGzevJFxuZgtyJvNw4hRrP3cs50rJg
	 yuSu2Bwtpkfm4GHqhWpE3GCf6YjZUR+/sC4Pf7T/uK+C19tOVb6AO/iMIQdZNBs7eg
	 /5atDxPczpgOISrVUYR/xRhs3u0/XKUhpeAYJLvQHcs+Nt9gGtx/myEiHRfRBwFpo2
	 tZL5jdji3RQGtXrHQIFLK1kO35CMzxH4UmQigrOAwRWxOzgvrDZz0X175eRR8A5Yd5
	 xZdH2UmW2MGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90771E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675135358.28761.10246101460296105616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfede1195d3edfd5202acf27045b6331da9e92cd59968b7739196c17e14a951b
Date: Mon, 13 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736751353
