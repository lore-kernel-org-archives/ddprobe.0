Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD815398
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 13:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46F6C433CA
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 13:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694181248;
	bh=fUwYnOty5IfPbBAkyGhXXTs8WqknltJeOXaOhgARtiE=;
	h=To:Subject:From:Date:From;
	b=V5Ueeg9cHygfVDChW6I7kMFMefeKgiK4Pc1AtiaOeVY/tWR32nAbXNBiQ7Ukaft7n
	 wgkVztxzzEd3/ZsENuftPukyqXds35K2A5BLTilvGnD+X6M1U+8rS1kUQ7QiUre1B+
	 SCWP1p7TDlfvkwoDE+zfNjOtDFpcAeAGK47LnfgEwYVUtc5eoZuqa7PO4jIpBFUuko
	 IfXfn79kk57snFTpJS7J9an2SY30iMxZlClif0hkRNUyKzDx7zljV77es3aB5CVhcO
	 nUAE0rERQ6gJlj7iiXXe8mAJ601JGQYra50ABTuw1PQ8WDUPL2+TtelmAy3HZs3tLq
	 E2d1kZxRpQrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CD6EE8001
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 13:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169418124867.19017.4020707953707797714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6be5b70c2a0816985f9d4a6cf96c0de2108f4b588f3b8938a9c765204f66e62
Date: Fri, 08 Sep 2023 13:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694181248
