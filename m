Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55521476CCF
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786109435; cv=none; b=JyBmOVx1wxLg+1xAZk+w30QKUV6vxdNDU3RdMT+HSzMyzTHAeQyy/sCoJULpd5Xdub3YZsVA5pxiK0UKZdcEx5VHLy0OM01gpPYKVcJE8+vbbntNDx+AzTVg/D1uD2PhoGgZgzatULLijSd4uDRwLXexkUFKjgnfBFDMH7ToZdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786109435; c=relaxed/simple;
	bh=JDIpkXN0C/w4O7KiKv1WyAnwS9XBb71jwYuiz/cpZ7g=;
	h=To:Subject:From:Message-Id:Date; b=ZHRfKDHPBT4unm2NTZisBIVeKgyRDmRQLbnsZhu0R0gj7IlkWe1UcMWcPuJLGUTfVPjBJasyP32ekGOtH8h3R0yHQA27WBFbX+JDl2qtqqyUSHVJzdoMKQ39FiBPZ+tnOYcwDqpog4gU9RfRarlD28fMx3uGu+A6ozcK3T2IbqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/6Rl2Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/6Rl2Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB313C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786109433;
	bh=JDIpkXN0C/w4O7KiKv1WyAnwS9XBb71jwYuiz/cpZ7g=;
	h=To:Subject:From:Date:From;
	b=b/6Rl2NvwZi62IQQ5GiFnqqPVT1o42I5NLZguabsROduW7jVdvod/OkBogklSjjz4
	 9e3U3nAovSUaF9R55wBSmvZ93zXHKwklGUR9KlfIjNXYIyE/63ZFHX5RWcV2HdGgiH
	 tdFsL/7HLFcoxT5JdsMLiB0/tD7cV29jvubA85XtQF/vBm2PcWs+oV9SpT/30LcRsL
	 FUDSmT4GVkcrK1KlepxercAFxWHpKnYdS1+D4lNmgVAWfOFUP4uKwe9lRftAdPT3H4
	 VEWZz8ZoTyYI/Gl8oESbNTgZa5CJkn7slqu0y6N4tQgDcrUGO/eTjZLiENa2tv5RPZ
	 MrClwSnHy1/1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA57CC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610943368.24899.4366309964499963403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf53dc009013e6a5e719fc9b19d3c889a1ed8c0ec3b63e1d176bb41a3646be23
Date: Fri, 07 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786109433
