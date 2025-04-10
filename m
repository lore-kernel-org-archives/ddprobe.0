Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEBB20AF88
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744319994; cv=none; b=R/mHXgHnjWKLsPpcKgb5G9kWw7UGW4ZHlMsTbhN5LKK4bxuw+wt6qmHFjzzXTfJQOEFUnh4/+j/OpXA6cNkaENrpA28KGfSO4keYCOU2BErVJf7uwZZoU3BEr0mRSC+q+OgVeuC0DUWQH28pP+HpdhasSGehc58YE6qnx9kyM2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744319994; c=relaxed/simple;
	bh=7g/p+5xn7hVVfeJiYjEP427XPqZ/iqo1pG6kUoApUj0=;
	h=To:Subject:From:Message-Id:Date; b=cfBPoLcSJufcc7PNWEaACb/VOTD1SQyyjcSRmgX3BrWp3u0Kb5M3E+s9P4ARMg74YB6IhNT5EWBa8H4w7WQNhgKHbKN3XASEyEtxvNAuBFx5dl5Tkk3d+GEFQwA4x2kW+wYs3eKqRoeFZ5a1yusVVeAzrmUxm2DXp5jN1FX/kxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzLXlrBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzLXlrBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02C9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744319993;
	bh=7g/p+5xn7hVVfeJiYjEP427XPqZ/iqo1pG6kUoApUj0=;
	h=To:Subject:From:Date:From;
	b=HzLXlrBXLFTlBBryUVGSWmFeGw/Ez1a/Iu7CUwuSloe0FMX6SaNWT85OZauC+yKwc
	 52Spbh6R/J6IkQZyxOQpvr8wuudO09yyrBxiiXhlGlssqyTEa1fuxnhWaz7TzEk7r0
	 x0SxqoXZu1e+lwlapPblsugaJp+tOHMnT4BCR9DjPA+8qI1FJIH6sY5FkuQW3vh0uJ
	 li0Aj5oCTZbJ/xyrrQTEX5sW+LyVYdanfaenjZF/GHe+IuCdjtSV+F+RA54oEx7VPC
	 YknmEoFs+YmtWdZCCZYNWsPFmzmLeFTqEHLyHtCyI2ZMRO8ZYlYGPkPDnvkJh9rHei
	 U9nY4j4Le3j7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFB8C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431999362.15383.189879285867645434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3711baae850fc63ecc6d8bbe238c41df8607c032337806c577d946a7c1101c5f
Date: Thu, 10 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744319993
