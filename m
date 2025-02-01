Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597FD25760
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738409755; cv=none; b=Mb/zUtT8MmqnMtKobhO7x6p2hfKH7Z0QcqHHHA1Ci9Vwixds4TqaNefgjDhs/VnR99jjlJwWuPylr/CzTv9YPuhrm+Zhd209smpca+0DEi0FnGNqCcL1pMujcqFDdVKHxyzCBgWxJHpSPx7qjKqNNSOtWA8hpagWI4tQZoNuvyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738409755; c=relaxed/simple;
	bh=2X1NyOB53oU0525hFS7CixlD00CfwS5RJ4Go2y4R80Y=;
	h=To:Subject:From:Message-Id:Date; b=rUFtPmjy2lwKJsELrQR5Sz/o9JlL2qAYnQCb+r/D4BmcKDSokRgachkD0T4fNkS0WAEFMyjH1NRxGcn+2Rc+TK58gpCfRFdQnCzIc4MGWyp909BnKAc/ccBqFlTGY5dRVjARDeoC6JZ8MZ60K/wDEl1U/TIID02pT1BQih3lHZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7J8yBhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7J8yBhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41D4C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738409753;
	bh=2X1NyOB53oU0525hFS7CixlD00CfwS5RJ4Go2y4R80Y=;
	h=To:Subject:From:Date:From;
	b=R7J8yBhCPEkw+OiGsrNm/ZYRS7c2/6ISV1dQAofBkHKbrYacfV4Nh65ZyTc9QKxNH
	 izBJoUbbrM9+K7WzPJWZj2rSFusY5FKE+mIYFjbXet0yZo+kngsn8W+LVMQePU/JZX
	 gxqgGVzlKWzRNLspeLIIpDVJcldPjkktQbXUbyRnsXVyL2H7/TTcBnUypV8Ak+Y2FX
	 E2iEp3IMDZMHUnwgAjODv3b1SLO2Xxvp6F8WozlPp3jPEV8DyTt33dMnkvSpJy3xBn
	 UAEKqFlC7JZqudp2uVnqbRLVaeQdI62JBecD4Sey+Rl+Uk+EpXG32fitITTij7bYoP
	 1LuMUeN8n6toA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC896C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840975364.11572.14919738048720323752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e374d1e374f418646c91884a012d6b0688a66ab5660353d394fa5be9f727429
Date: Sat, 01 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738409753
