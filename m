Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB4042AA2
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735836954; cv=none; b=DFbj6aW0js+QbjTNpvMerwXCbIflURxhb5YkN13EyQYGlWnRa/J1N3rv9Q62zaRHzd/BN1ay8YFW6pH/kPOpo6Fkgifa/wZaiUr58zUE3Ege9B1ju9k1zyN6dkraJbrAHhfqGOeliJ45y/SZAVF5NfCpiFklG5OKIn0oqCaTXJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735836954; c=relaxed/simple;
	bh=wzJH/VQ/5LphJukK1UEWMYUiQ95IbOJ16UXBZJ2s0Xg=;
	h=To:Subject:From:Message-Id:Date; b=mYgyci4kWAQ59ef/EuuwOz1JAzIUFMejW6izT5lV2C3a/1vC4bufHVOmNpSGjcuI5+JnfuQf11lQ/jnxn01sjsPbpIjkMVETqjcnx0GULIrvuJU4oM6w5qDxghSXbdkRYN2psT5NhPzA/VwAOZJ7xtykKBUX3Ag0tBktQ92JXHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sccZuIun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sccZuIun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6AAC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735836953;
	bh=wzJH/VQ/5LphJukK1UEWMYUiQ95IbOJ16UXBZJ2s0Xg=;
	h=To:Subject:From:Date:From;
	b=sccZuIunHtg5UTQ5thpb2WVeKBeTqBt4jmG6zRKEglOkPCD9LMn2teA3v7X8NnG+B
	 KYXOb4ZVDoqkPaWJn1Ofqb9QZC85n2ZCpWUqvEip/DGzUN65JGFH/8NSTCcE9p9lVT
	 WPTCZI5bpd2Jw6ybDtK8cQjTCyHXNoRIGzDZL491HpjPLbfomuxPYi2LJ/xXxzE53i
	 iBeFBPNx89zbdrlVnVuA3/j9uh8isfC9+955SoOBgAMXrbxiy1tIH949Lwn864tO79
	 aXAXGeaziAG6fKphBQQk6vawOv7S7XWb1da5QF6a/zVt8qMEACusVAeEpD0fXCK5x3
	 BieVNEJl6dDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4B1E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583695361.15793.9435755187633693446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cee9845eb647239c7ddbad3da88fe8b4ec6355d53570ed1dd996002d32950d
Date: Thu, 02 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735836953
