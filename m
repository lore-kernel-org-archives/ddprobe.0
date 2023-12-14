Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BF33C46A
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRz6evse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78580C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702574896;
	bh=1NK6TDu3h7iffF0qHm9MlNArCqSm9xuQU8ypXXp4jiw=;
	h=To:Subject:From:Date:From;
	b=gRz6evseNihQJgQWHrUoFryITtCD5wFwW0d87vJkkhuhlDbBVDgEkIPFOp6qAtkOq
	 PjnN7xHB0+ELrO/H9aHVvHa8VTBF6ToYBDIK3t7rdppgocUVBDvfs6BYLuy8a1p8fa
	 WjfINzY6MBHlvK8qjtHC5nwkKs81QwcPMycXC4EqgIH1WUuzhGUd2FttCaY44EYDCr
	 piVI4u61l7Pa1W0hRwkWDt38bTQ6WwmMSeNb4GB6P6OavUGVLFS49xufNCuHWQxYK5
	 kx0TKNXL8+okvoMAqyIbYgRgjL47zPZF+Px8SkShuNkDrnrECsrrzzgtU7FsdHMWQ3
	 NdI9h4joItL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E62C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170257489638.6123.6437103683522153659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371b84fafb4beacb96e3c631587b9da1cc2b64be76929966a5b46e8fbac0f050
Date: Thu, 14 Dec 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702574896
