Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2F837EFEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772568894; cv=none; b=eYA+xuTC4rhl9gozxdMIJRn4CI9L0uK3hPCqcTXTsUSrSRn8YUixTBHCC9JCuOzxquPRooCC5Rp4s4Hu21Ihy4gMaBf5Hmi0TRnzcsldutstDXuTvGUzkNWPFHvkLFa24v7PRTUEArrWJia5kjkXkeeI9qiZNd+QBjcUROuSFBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772568894; c=relaxed/simple;
	bh=+q/D4XZNnXzj5dGgE9Hwe/MJrdRwHWGxxKc/auIM9fs=;
	h=To:Subject:From:Message-Id:Date; b=cw2HjMK6agG8QXnSDEZVoeASZgL9oWIy2LIZ4vqkxbqFKwieDyhtJWDS2c+4T864IVtWTaMPg7zplSgCxtCxEcCzIPlNF7lBhLrAPG9ZNN52PRbviIFU7SgCWu2kA16zgq9xsktZK7xWRz3c3OpZJgdClbvj8OY2CvzspA6IkqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYgv9p/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYgv9p/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AC5C19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772568893;
	bh=+q/D4XZNnXzj5dGgE9Hwe/MJrdRwHWGxxKc/auIM9fs=;
	h=To:Subject:From:Date:From;
	b=kYgv9p/6oIwR7OEX8oRjFGXXD7S4HlgykEBn62C5r6thBBi/cavfjYe6+ybhzkMrY
	 lBQ0G1laNjzlLpFNLm4ZmKtK5cA2hWKHQGwHcmp7wkcoqjDTUF4u8vUnFpNB8O4f/H
	 J5MyQRR2fvzUMSY+N2xYBcmNsN/gt6bLt1bqROGKdRPkioWXc2CmslItjZKq4JvhFp
	 5nfSSJPFYf2znsStVoUGNK0dORsorwswAw0Lm3iKg3roguMFly/zKaOlEZooPHkYhT
	 K25yrdKabKnT4Od4RACkqpUCgTsL8WwDKV3nxjq+WVlQi8BtnaiZFtOKiGmrdQGEKt
	 E/ZYHzeib/INw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85ACEDEBF0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256889379.28458.10389957463461174341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152585897113c7bd6982189371bdbb9d8a5ad5e8c9327d63db7a30c0fbee52ef
Date: Tue, 03 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772568893
