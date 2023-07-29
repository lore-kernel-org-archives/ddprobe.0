Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F583D60
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 16:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41C1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690647128;
	bh=pLPYRMxsY4mQpgUKh3WQ0t4gGssUzur3/oDyNJ90gUs=;
	h=To:Subject:From:Date:From;
	b=lWRMAT856BqKhECwgAxMq9UQB3UeiJwtHBdpfgRkstE3s27R8EGtuxQYu4bJazkxE
	 +2N4FsM3f8uWroxMHKlunwhKgcGCiZ5+XJ3GQTPYBOTdtEEXN3vScPhByUg8lSNFD/
	 Ha+6Ere3T6YetaMY/mNQy0cTNB5kFUeh+W/QhqU/JId2w4paufQ8GRhKvd2iLvfJwP
	 H3R7ycXXxJwYWW+HGFL1p9kzVyGHAT2fChH1EyjqDu6qsRl+cJ5Re5pgdzuU9klFEG
	 1+c9n49U9w12zypgvJNkt6L2jZe0OD1LHX9fss1Z702xxB+K9IiOgX390Dgt6x+fic
	 k9qJgMEhuNVfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7162C0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 16:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169064712867.30251.12369709606266427215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aac098f873dbac627b36a260bb7cb3af72b56fb22585acf1353e3b5745b9538
Date: Sat, 29 Jul 2023 16:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690647128
