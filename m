Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CC93B784
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741240734; cv=none; b=LCn87kMIBSI1D7yEiYCsuVraQMrnaT9hXxPssSO6R43IcqTeTJz2OjhAQMvciaqEQDlkAH7dBu1SNM8cVCOJzRCcAusYSaVKtsTrBoLny63Y1IX6KeKvx2aaksnhYQWKy/4Ijl6Q1YHUwvd0bYDZOGzc86EyV8GqILanbDJYg4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741240734; c=relaxed/simple;
	bh=rZGOaGUpebaafj9jZkQdlNt9ee/n5yEArBBF2AAGfBk=;
	h=To:Subject:From:Message-Id:Date; b=X9i7htUxwY25M594+Yy48QZ9czDFcroJYNCzLf1eVlQzlMRsQSyTK0QvWCHtTzdPYAUcbglPZDfXCHWE3fuf1jLyOX3tGp5eyldLdWRAy76y+1f5RKuRvx99K6ktB+3x+WbK/ua5b86dKcUkI7h4eNAemR2mf/wnYFWk4thXBDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApZvqSCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApZvqSCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741240733;
	bh=rZGOaGUpebaafj9jZkQdlNt9ee/n5yEArBBF2AAGfBk=;
	h=To:Subject:From:Date:From;
	b=ApZvqSCTVtu7OL/sd1RE44lLmjYJuQqybXjoh6MtLOOz2NiDqUB/NTBTbvlQB/ebI
	 Qf7d5OvjPYrzz2U2jUYuNNndfZTg2Z3QhR/9Navr/jxqJeJtE6F1vkJnfqOnqjFUpH
	 8BmlzIvmRN20h9GHIeDlvJSBmxl3JcU/+Qnz3OF6lwcRIsiHQH1e129DNldnnXvlfm
	 fkLASvzaKORiqH5pywmkVzv8SNGtNE7tmOeThqCI1EyOQ+JmEqLppeQYTme+2IxJeA
	 IbBX3PRnF9N8kBZAEin1izkRl95aS2LvOXcJdu7El/aVCt9XOGAVrq8Ek8fn9BnxV6
	 blwAXCk+Pjdwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B8C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124073359.19788.17433615350462694425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c73f35f209cfa858e84b5e4542f3b33dad6d0146eb93e5bb287f0e57f4a1f8
Date: Thu, 06 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741240733
