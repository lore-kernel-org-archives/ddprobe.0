Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5849214B96C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718142503; cv=none; b=C+XYIolQHuoU5OcM0tGEExTq01MCgc16rZgva19aHVo/z6MNTGb3ImK2+ttjhr7y2RrfCdavQPdnRKPwGfn3CUEJDrgJF7Scof53WPzgC/NzEE9pnjhM7L/iXIYc5+eqlnXaN9mhmt1OifVGnJsQ7hdBE7KKuzI/NS1m1hkxj4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718142503; c=relaxed/simple;
	bh=Qb71aGy/X4XOGSWwjXn55hM9+mkrKDKCU3/wXEpEZn8=;
	h=To:Subject:From:Message-Id:Date; b=td4Ck0pa+3II1fwwxFd5seG6umXk6iNPnriHiZd9wXVbHD6zl+k3B4q9OadWFEqVIhCkDhhq3m8lkiQMmbO5cwKqB4OPzaQYS38EmIXX+7nPpc71tytELwWh4gBKFm+9Xx/matl3/7zxoH7nEWJ8YBQHOuLd8AP8CJCp69dOnbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G01ZnVkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G01ZnVkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC40C4AF1C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718142502;
	bh=Qb71aGy/X4XOGSWwjXn55hM9+mkrKDKCU3/wXEpEZn8=;
	h=To:Subject:From:Date:From;
	b=G01ZnVkjRKDc6U0n8FigrvwPq5t3Uh8GSuFni5yWuVPX3LA3f1RC/s+RSR1oAJsBK
	 mYeQxtvQ0eZdxfls1A9VJMqOy5bkzjhdHuPujFciifgroBvNSUb4RPAWiV/BI1Ee+4
	 Egfxmm5bi41a938ZCpd3Om32wWf5GSWE7IdXr5dbX5Cd8oWt7cwIWd8TsuKgFhxSCq
	 kQ+3Oph6KLXGCq/jLYoDkduYGEMOwA0wuSU/8oLwf/Vgj7pz9Bq9C7fk9wBOMM2pM9
	 m7EdyyRM5YjktHpsikqxzO/WCc83hz+LP2mru4Wy7IUvYgNGHa5gRJ+QLYGi7Wbmm3
	 cSTOfzJBLQbzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD23C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814250276.6498.9076438915424909031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6454298a65bdb130a246afe03522ac077c338d08b25a6cf483015e7d048ffea
Date: Tue, 11 Jun 2024 21:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718142502
