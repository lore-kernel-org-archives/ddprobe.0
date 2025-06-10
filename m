Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD8F236424
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749576594; cv=none; b=ns4NRmNaXk9swB8oS0FwoAyC8szsoPZx158KbpFyQqZoqraM7uSZ+W28wL7bHDB4/2PFy42wlUQTLFK3C4p+2JfdZPGrl4rqFkF3/u0EDN0z/5ud7USTZqKDsLw5knIi8W8jo7CSYfrlkFGcdmTULYfn8o33KJGVUbFDqbnr2p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749576594; c=relaxed/simple;
	bh=OHvbuI7xpkf7L7gnzV+0FGBnCAF/4r9mcpChNTWyt4M=;
	h=To:Subject:From:Message-Id:Date; b=MzNv4f0gKjD6GsxsUoYajLNKk9N8ALWVJCiovVXkhceiFxEXYhpA+ivPeRfK/3AA6+lACcbq+3OaXwRqHex9QmSwJS/Jk6/qX85qeVsWQoz6jAXRu9izcSJ7fBhwdbP529kXAwtHBTevYAjI/Mili6mcLP2G3eQ1zOsEdy+z3ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7P8ibRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7P8ibRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDFEC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749576593;
	bh=OHvbuI7xpkf7L7gnzV+0FGBnCAF/4r9mcpChNTWyt4M=;
	h=To:Subject:From:Date:From;
	b=Y7P8ibRELWtlwxC5yUYDMe7MEAtJYGCqNmV709T/qqW0YtwvXLbco6AksD0EI/sP4
	 AMH4wceYoMKkr6sGWKJW9blxppxiB6RmbaQIN3znXiGsL1ZztyViLUvu9Xx1lSh8+k
	 SsDQRzYm4nQeKUqekQckjQwwvwUa1i2mLMnvRPUROUtRACWlPn0PmzrcC7/R2LFkmZ
	 OPVFMcYjLG+tVqfyWf+Si0TKvfOkeBS3XloN982wUsKkTqYBi94tIlkZ5XxlQk6BSx
	 hgLlx9r8X7dSqZUpxD6JHSMIt6680+KySwM8p2nIG46XfdyBdPsDIzXYyT4xUHrqcD
	 M7SjsXMULT/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD27C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957659358.19068.715161464731583828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c02843f53c968614e1008f325fb14c38e961d8a6a439df507e2c1de85540f6
Date: Tue, 10 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749576593
