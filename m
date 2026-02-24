Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98DC366DD2
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771941294; cv=none; b=AqqCM0sA/liJAn1yiLsqby1OqVeROKT5fo8mqOHR4i3nruKU56387U+QNp3HsGQ4qBmXewLvFtYfwFAKHKtHulsIYjcdDIsuAPF5GRFGClvyZwSTJbJ11atGCnr2AvnWHBJYX0qnVnhlFccSXQsvBTLShRE/CX31AYtITg25EkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771941294; c=relaxed/simple;
	bh=LBH+Srzs3RDc/NZyZ349QQJfBad+wqhsjewhY4fAeH8=;
	h=To:Subject:From:Message-Id:Date; b=OVMZn1CrBV9pbsreXVrz7whjA+y+H/onmmQxcicbYQ4jw89Gse1/vN4Cg3wer8KgcSv50CGruR77aICzd5jHtB+xpeM0H7vK+d4jBeepmUUvR5RolZgXqGjwi+Ia3hIZB1orLBXl1CADy+Tv/FnMGKv6ElzPHl4SY2hH/Bm8rBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSKcYqRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSKcYqRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6530C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771941293;
	bh=LBH+Srzs3RDc/NZyZ349QQJfBad+wqhsjewhY4fAeH8=;
	h=To:Subject:From:Date:From;
	b=iSKcYqRGkzKz2R98IpZ+XbWyvNAj5O2ITXydGe849i6ZsUaWZmfLvHNWErKX+UJE6
	 ToK3QFs/zQ2V3ddAGQ4OV2EeG5Jdv+9aaHwj7j8PJ20Kj9dXtlY3gES2/V2DRjp1S8
	 WZhOrD8HoNYCnBalBGhgp/EuS8/ArJL0RwO49/BodLJBd9trAx63xWxIZwRkDl0vf7
	 EZoAu+LWa0Svn3z5MY7UeFjDwpjxUATt7RfmuaNHs3U6C+PSQdcg7nAvG6WB1E90Ux
	 5umGhV4mv7+NKPMmV+yxA7Z8Ya2sklK5+p0yugJ0JebA7V11fZJ0iRnvdGsEf7Zd7w
	 9fqbCUyUdArFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7DE9B265
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194129359.2181.3595765796425514948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5712752c9a797d4b816bcddaf27ea5f69e4df100cf2ad06dd5637ded287db467
Date: Tue, 24 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771941293
