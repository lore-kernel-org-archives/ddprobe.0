Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99012D04A
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y86T9S2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB11C433C9
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702474696;
	bh=2pPJoB+iR2zaHeSR1HNWRPztRS/ksaypP2qGCDDjOS4=;
	h=To:Subject:From:Date:From;
	b=Y86T9S2PDBAYsdpNKBYgtl+a7FsivYo1P5OD1G+tMy476nBAE1LGirXD63QlWgsUU
	 FOiXP1PGJux+c+IqhTV96eY95ui0WQx+L6IUc1ud9fGWZkZPvd6NOjB87BZDEOaRrR
	 F+ufffwOgYy05ZCIO6fhP0HnVNaqIRS61PyDY8H+B21Oogw+OwLnivR+5j+24RFZkj
	 flsqReYMb5t8+lkMZEqU+8yVYRxur1CailcVY4E7LvxYl1X8Poa/hAJsQgGzEGRi9/
	 7rrcwu5HIYWKkludVjWuCAqfVQBWpavcuP3skZVS9sIECO2v9959bva9vxHvy/aRvo
	 yN+4OLxWLeeYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685F4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170247469642.836.4168091654512474954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf814ee49adb10fcfaf52378edd4dbbf970a0c079bb8f61df6dc03d00d235550
Date: Wed, 13 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702474696
