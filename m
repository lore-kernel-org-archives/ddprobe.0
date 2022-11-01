Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20F97E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F059C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667330454;
	bh=dTJBAbq2+lKkbh4QfJcoGN8Agyd7wr9P/Wv9fL18z4Y=;
	h=To:Subject:From:Date:From;
	b=m+yiqA8Ri2cnFF6U+tCADivj06TM3QBqsJzbQBg4VxOmF3CLYqzIc8CkUf2CK5bVn
	 vSgnny5CAr87f+l1L20S7SP7FTNKESM4Apkc0NQl1fACugSplmiVvQxYchGWKDAFCS
	 EO1W2s+tj8IQvoIKVumXE3npiPNb+PQFddYaF6zpmRgPQVHwINUbfJErzasLXFEDRq
	 zsWfR4gLiXxi7/7Bjr20jiUNkulYMJukP+dziYYSVDZ7zlQJiFH4K+A4iNsmiF9arP
	 SariNh5oBGDfK5E9TVVIq2xEnQtru+OX24VvOs6c43AMtKoe833Cn0B9fZ9BLsEtuW
	 LiR/Rdr+22uqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590CAC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733045435.4230.4902913902769891680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8605632442d3047caf0cb95338d3166315d68d30fa5f36fd49979ad5675253ef
Date: Tue, 01 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667330454
