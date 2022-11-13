Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A287B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7957BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668324054;
	bh=tEbRR/wV2xQRoYUOvVjX+a+ErA05F7VIe3iyZnUgTx0=;
	h=To:Subject:From:Date:From;
	b=frrt3Zem3sK7S6JFjYKIG7G6O/cSsGNTZGqDPCOBiPbCi+DDqFnhX2KwZlH4eQCa5
	 KnlevgQBjeEpp3lmR6j9T0HlFj4uEFFm9IOf4/73OS17yUnWP1lHC9Gsq5uC/KMZpo
	 i+P6w3xJwpCYJavhIvPD6f0HlgL++qUSyHA8IJuKuLmgsIfbxn13cA/istngdNSNVy
	 ju5dqjj1QL71cR8sf1DW77Zd+oXaF1wQVfrDaaWsZJWPNBM187CecUVJDPujTZC9co
	 yAyHnukKRjvrmHuC8xd2fVNLvA1xUWtyV9U6MJ/Xtgt9FLQzRZdEWVlF8tGrUwi3oF
	 UyHM4LhStSwjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE75C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832405437.6475.235397693799251807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e20e5c60cfaea6fc53a3dca4dd094e7394bac5d00a4bc90c0a4128ef51e463
Date: Sun, 13 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668324054
