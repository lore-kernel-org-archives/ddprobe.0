Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424DA7711E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719606863; cv=none; b=TXe2TWxO1PPCj8f/PMdPJTSpNRxGg9GwU1BBRmI1ejWa7QXswtFdGc/X/PQHzUyyzyJcGNMEnZ0MWide2LurtgWTALeTE0aSwujhBG7GNeu0Y3oZvd9lkr18v9sZpeQbNu8hgZ28QzfS3Mm4coJyIamZIl9D8U/JcytNnxkVrXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719606863; c=relaxed/simple;
	bh=UH1ggvTmyWVz2eCbWFRCPxgKOEEA4U6foBCy1lWAqeI=;
	h=To:Subject:From:Message-Id:Date; b=uITmkcB4GbU+n8xMiK/p44+VEasvw7o+ENu2xosrfZCEv/vZl052UR4ftKN8xNws+GRgp7KLAQk/XnIyYvB8Ym38splkkmClTlX9FBdNsBOKRUanFHcMegd9SEIabEqhPD0zZ7aL8yer1txvn9T5ozNvx7taCyH8hv/bC27dLAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQHLcPEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQHLcPEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D388AC4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719606862;
	bh=UH1ggvTmyWVz2eCbWFRCPxgKOEEA4U6foBCy1lWAqeI=;
	h=To:Subject:From:Date:From;
	b=BQHLcPEx8nYVXNE96uJ4o18XMAKDfT8wLbhrGr7yoTAwCriyEsW3kjDyX0mt5Bejq
	 AEFSI6vNZounW1/8bLI7xLSbBwcLW4l+KMR4YxRi9VervXvKdxdwxfm/F2S2HqdNaz
	 VtM0YOWBPgNX7/8xZkZvlOsFzKuhw24AFdw3VXuyTT8dITuUp1FghMLAIV//3HNntl
	 cCudHhfr+MCAUcG0PkcfgDhMf6FYaOmXMi9wp//93ry/vWCYlymMJxD1JrtU9VrPLe
	 2UVdBDuNP3SYxf8P7MQg87UbBBQoESinctuZn6eHw3IVLPz70Cn4ZQZvciOE7/ScgO
	 Z4lp1P9+71T+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C075AC30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960686277.7459.8021865106958947566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac8cc22e4d3e2be2ada3f2ca80c6b681a88b0bcc201fc7b3269e605cf64bf9b
Date: Fri, 28 Jun 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719606862
