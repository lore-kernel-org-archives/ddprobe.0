Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A8912D21B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767971634; cv=none; b=DQtoE+JgoADNXquQp9r70MzmVOtQuxPO2qDMcTSjOZjFg+ItQ1C9t6xKPEYXGkxRfEIUxt6GWgKZ+SOpfl/hxUCk5S/tkYLN913RKXckAh2JolNr5F1cbW7+zx2iByWWoQ7KpoiSkPjFdB/2dRPBKRnddGISty6fB9Lqzd3HUlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767971634; c=relaxed/simple;
	bh=B+Yptp3x+6jV6s8wcul8qYihH1PUCOmcu6G8FNRxglY=;
	h=To:Subject:From:Message-Id:Date; b=IOANjhwoADAsRmyh/dV1BliUQpR/3iZJYGf5Xk0ewPQWWlVvnuoXVVY1Z8VwgAA+ITQUT2w0Ss/dyJgd+XjLMD8lzr87dm3INjLQO//9DkO/FVEx1XResOvJ3EMDdqFnRnzVFYE++iPV5lT4jwa/0kWxZiox3l/RD1xdLAb4alA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsM8HA+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsM8HA+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA377C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767971633;
	bh=B+Yptp3x+6jV6s8wcul8qYihH1PUCOmcu6G8FNRxglY=;
	h=To:Subject:From:Date:From;
	b=GsM8HA+8r0Dpu79JVBxQN4egLrH2ymCH/razt9GLOfrAEU9if2xag4g17Fnji4r3h
	 TW7x1+GII/HOOG2AE3VbAzJS34nFcVSrhE3w/Zly1+9FkLNUXhJN9OGNhJOPPC0dav
	 9/WRaPb2JPo5C5ESZhUn29jd5XxVpBrb19tw9E25RnYxv4NcmdCNxWuT98kI3msHxl
	 lLaslYk7dYqxROjNn6qs7ZwJhiFuHkNpNeHOh3OLKPJCINLHXdXCasqmv2HQKc+D6c
	 /akJpuDNUlgoUXixdfCl54E+V0cgJ/y8id4aiSamBckO1rLEw8/Tiwbw79iakKfFdn
	 zb+EFFTtQ3QYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F9D26D60
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797163360.7351.7509971983853457891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37e6f57f05f9d06390d1aecf90df7a4cdc4fb8d38f4037f60acbe59e1785a3b
Date: Fri, 09 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767971633
