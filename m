Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BAA3224
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721938554; cv=none; b=HgvbVFNqNbe0Hk2GzjsfUIimWe4yZ7iQBWHuZfsdflXcOYytEFTJnq9ztbFtLlpzMq6rPza7qhoymVVf9vEMg9NcBNxdBY/C1JzrRUfk/+7Nhcsf41bxuqKD5GsOmKFY1DtgWGrnK3FHoW5omwG45DMDcP2R6e+ZpEZJAhJ7MxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721938554; c=relaxed/simple;
	bh=kLK1ASlhYSuztx5PzTQw8JpX5mII0xj3KH+HWEp06Dk=;
	h=To:Subject:From:Message-Id:Date; b=WDq/NhHCooX2+AmSMAEHC7/rTaBMw73K2GAletvCX4GqkCQ1RQUoVgGI6OCvpfP38UvqfV+Pyn4D+sCOjnjlh+UhrlSfG0LTE5h1fe4yv2hhesP3Z3te5P7oEO//cn9S4RjElhxcNXHnboyR787S39swjIgFaQw6dvdSt5qDNnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrB8Ny5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrB8Ny5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3E7C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721938553;
	bh=kLK1ASlhYSuztx5PzTQw8JpX5mII0xj3KH+HWEp06Dk=;
	h=To:Subject:From:Date:From;
	b=PrB8Ny5ioziEcRg76iNenL7d5zvZ2PM9oMJKzDiIs6QlPd5M6OMTnx7DJHjKrI2Of
	 6gfX31JOoPPxcs2sRVtCmWP11d0B2EJcX8EMHZ5UgiUIHuOo25qC3A6zMzkci2gDuX
	 Olw2j9D8FcbDMgEpotJRcgS0V5kAsG3A1nVkSp6qXGhlnNhYjCtCQyj2D0kY4hhw9U
	 P+zPy4HT4ekEZ4jdwGwiZRD+krhuuQ1YRtDl7k14E3hGWhvnT1ZED35TEDy7fNeGtb
	 R4mELu/gizjt8dHJf58vSm+uKp7iRWyAw4uVxvPTO1ktmFqdB0Oe5PuUs1/d7WH8JP
	 mucb2tbZ3uNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA659C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172193855364.24554.8829476270573700638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ed553a4583be2c9a82f5e2d15e6ba91a075a7de55aa37176d0435305f491df
Date: Thu, 25 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721938553
