Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2112628D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776347853; cv=none; b=UcXTfmtp3Hn4bM+xTJxpuQc1M95sPH0eSFwymlZ03FUX7uPn+w3FAuMTjpT1wMP+3K5NZ8yrMGycN8GeSnp0Rrptr/PI/vFw9oooXjhqH1UjcQXtmxCYpduxIxV/epl1F48oQfQbaA2PGjs26caodqjHDxHfEMjrWz+6VAX0VlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776347853; c=relaxed/simple;
	bh=xaR2C/dw3J4DiWy36zrs1oo0/HstlAQhxN8XF5n55EA=;
	h=To:Subject:From:Message-Id:Date; b=X2mv7Rym4LqB6E0iyp4BnJuAH6Ia5xshSezu1C+eiTD3gP78RF2M/qgEF9lC4LBtOZTVui0IZLwX2yiV17R9Vi3ZV2QDFzPc5ieGxSv+FBJ0+O45Gz6v9ol4/P9DtvVtO7xLz6gDvr7Wnm17e0el4lT7v8FBMspwr25ie9gaB9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzIiD6Qv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzIiD6Qv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CF3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776347853;
	bh=xaR2C/dw3J4DiWy36zrs1oo0/HstlAQhxN8XF5n55EA=;
	h=To:Subject:From:Date:From;
	b=OzIiD6Qv/jC3PXgWGEoikigZwRpSC1fZPfh27Af0APpLqPPAE3OzMkC+cyQCJ5noH
	 /BeWoIGYX2e74xTsWGPW34zcVhaGkoLdSOIHA+LTtR0c09d1QJYrl4ZxQ2SNKyJUhX
	 fMd4RyysuPMPBz7debmA5XD+gRR91S6gqjqv7zwZYIkWqxP9YdFw7gxEwZUwZalaOd
	 qzgcsFvLPS8g199SUoF4NbpG4dIP63ecCgYo13z1tnNw7e1377i8SV/GPsVr0qQA0d
	 Xw4w2XzicNdFyqZf0skbdtTBuD86aKTFgIBGHVNnemc4D32dYB66+rcceQCauikAvx
	 neqqWjO6auEjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F25F8D746
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634785368.24277.10550076923379581663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae9e71f4867b3504354ef0ae15f77a0d9b4d31c05b026629833b682dedf6691
Date: Thu, 16 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776347853
