Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A1D7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 03:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D920BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 03:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678505705;
	bh=8N5Wvo0q7PgwU5ixDf3UQuVhaTXvJFzNQFmp3eBLwAs=;
	h=To:Subject:From:Date:From;
	b=uOrxjrAbusO8NZIwQIdyOBB2yfpTaGlIHwFIsTV814nP3WFAZ26qEJabqdNYYxEQX
	 vflxHqXOuvj2h1IeB1jfPKqY88F2bK/6oZ33tOBuNgv9I7MN/m+1AcjSUxSW+3gUmp
	 uCzTa1jGBEzauPMgqikakTqqkuyS5eKNyo4SrEA8QTHWeYMBIU5nDNxvRSN+jkQxXm
	 K4G7m+riTu6fkvp2hdgqseTZNbyvSvEzMPSgm+icNwPwLAmT7YFUHgqNWEtI7eGBwb
	 wOIcNNB8hw5ssCZULYnCtPOaHzLQ7YABmMEqyGkgQLLsGcjjHGVS0zfJ9dybIBfE0g
	 5QfXIacKqmHaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB856C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 03:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167850570575.16033.10259062294198862521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bb924764f59e6364d13e248c2966255f9f9304c919076113f5f04a5f5f3d44
Date: Sat, 11 Mar 2023 03:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678505705
