Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A8636E467
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774297494; cv=none; b=ASPikiUFkKFH/IW82vhMjmy/obpLAlOGGUg379msYRk3NF8H7sqifcEDagZJbw3LiOiHIkraD5JhLRQMMEXMJwv1EkWRV6zGAinheOXIfIlYsIFwOwzYvZj5TCawpw4cbvTxj7F4SXoVeRSclRBJGhIw/OfIDJfQIv2TniZgrSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774297494; c=relaxed/simple;
	bh=bGLlGWDierGqMdn6wN4IvKOhiSNmlbRNGAXfiu63IT4=;
	h=To:Subject:From:Message-Id:Date; b=Rq36EPoVvn4xXc+8/mpb1xDaZcpS+3kAhIoTDdYNNedHVK1QAkpSfjuold25fn1J7CiDbVP6V6ZB9gVQN7WDdtYZIB8+DZEnpj/xUB5g4Yb0RfgknMdMTXAlMjz9pHzLSxWxsh7A7HZ1Bc9mMPPczvnsImDDtTx4UEsY6Efa9Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcfkmVb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcfkmVb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFB4C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774297493;
	bh=bGLlGWDierGqMdn6wN4IvKOhiSNmlbRNGAXfiu63IT4=;
	h=To:Subject:From:Date:From;
	b=HcfkmVb4CriTK8099FZE/yYe+l/UuuJJ6Gnypw6snE8zH75gE2OYUeeOFiSueudWW
	 PW4P/8jqvAUUIPvi8xe0Ufyis+rKcSysriWM3SXRR1tPXIED4ho2nlSiv1LLWRYmFh
	 3gHTbLE7wuCc++NavOqDK5TEa/VxGepbuPLBnz5F3hUR7kvAriZy8ZRA0hSuWXs4e3
	 BtK+4RCr0CZsrJKjSk+tKWPju3LKBtkaW3quLXyolzcOzV2v4U3VAYxkgiavyc9TuG
	 4pl4xMqD8LezSKCDttuQVTbATCA0PCbse/Zj1wt+wDR4oFnxF3lF9oQeiah+whe3m9
	 5UbNQXiu9ikJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D4FF483F7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429749360.22163.7699966211601863908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297e640ec7304e1fbd75c488f5f3cf7a8b41b3fc01af0d3bf5d0abba7170f06a
Date: Mon, 23 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774297493
