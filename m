Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5614317C21C
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745552394; cv=none; b=Ie2tx2yLfAqG3Pavkam5rT4/J6sRLSMgz/WaEdvF65anu1KHfdwfJEyHx+aOoFJwCMfhIMhSPzOv37Ku4qa49J8BGcCvUN3qjj47mvf6sqaWTBMjR3zCh8I15nMSzfVLlBXy1UrmbyC8LluHB7xWnsSNrmsOYGMTmbkDSs6z/yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745552394; c=relaxed/simple;
	bh=9rN5IWS2aySEfH2DIZGP0Yrg8SRe1IA8mj8+E4VLKNo=;
	h=To:Subject:From:Message-Id:Date; b=D/Hk8UVuWSRIOHtntAne7WtDTn8VVfbKMLjkJ44Tsw7Zo5eYDsDW9HlbQigYzKZORM+zruztRlBmN9MHLYjGqlLQlk0f7NM6NzC211ET3mwFrGjxfU/bmX2l2vskIsDEv4cTVbEK3fYj3wdPxNUGDQuoB+gNYY9sBITwtzRCGm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opOOSpYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opOOSpYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89FFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745552393;
	bh=9rN5IWS2aySEfH2DIZGP0Yrg8SRe1IA8mj8+E4VLKNo=;
	h=To:Subject:From:Date:From;
	b=opOOSpYCOdKfgo5xjMxXdbSbk7ZINUSkeKZdlZaflAYRbY8uYXtDyjWkHJYvCJyU3
	 GbZlUjxVHZ/ta5OB2/k3CrUmy2I41Dc1gXaSqDOdD6Zs1KRsC0OHMHPd0xqtrDuc4/
	 rp8Srxuzw/Vih+Gd0FrMtI0TdFTJIpceg322jjzzoxSmlLSBjnhLJ8aIGNN53IMASU
	 JbXzJ5V2504Z8X5naDdz6Zal6KwWSy1HF655NUas2CdBKehtCRZ+Pd6NDM45v/IxXM
	 /y6CAFjEiMxCBqyqkWwLPRm7p7JY32t9/MvY2hfUNR6AuDiqIz6YopNsl/mkBclHQt
	 KlBUFm+ruFrHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B2C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555239358.31066.862691434682718527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9af5b18475ef4ca1e69e1bd307a2d9f4eeb57cf5ac500f9dd4312ff3890d0e
Date: Fri, 25 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745552393
