Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1130B1F601
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpkjl+3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90829C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699054096;
	bh=QFhdYFQUhoh697zV7KWKI9PdGiX6MnmxzpZw7EcGmOM=;
	h=To:Subject:From:Date:From;
	b=Wpkjl+3UHnGjbRpzavCHP0Uuf0fYsKxE/HxgPOxtnVk9Xa8LC+mUYg1rmE8fwSGHM
	 R+b2yEP+ZI1GDBdbnQLHqKYAVOfqy65SbX9rgo89YH5TbzBCTrw7FCcjVr2UMfHYWU
	 HAFQRmBMRn8rs5wbqZ1RWJrd0WDkojvCk92OLSOJhZFhB/w7zcvM6Deb7FokfvvYHa
	 cfhZ2kYb1o+BHm3ZuWnkVw33mxTYy4gny8lAfbhlRULbuaTNdfUygXd4+tFlgOv7tC
	 6Aw7ezqq4aI5eTBbbT4WHonSkA3+1vsqBdYPN5M/PMcOZHT7OSsYEs191xMhLD4Ijr
	 hlPAaRafmdoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F02C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169905409644.1121.4920210407824001952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4266a9ed130a124fe24e8c1200203593c7067f9fbac5c2743430cc6f1dc430f8
Date: Fri, 03 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699054096
