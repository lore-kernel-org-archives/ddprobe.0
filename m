Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00443381D6
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcmSY86X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79631C433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700850496;
	bh=2lOQbMZXFcsKSxc9icq5XTE6e94GkFjy2emkqDrz/n8=;
	h=To:Subject:From:Date:From;
	b=mcmSY86XMHpkC9dbpVnMWkVxXrdnuOFQIa46oKziaN39Pq7u1VWjBZJ8vLTHwTnYF
	 e2M8pSPnTVutFX1X0z9uebAh5KRym72fhLX8XQWvNhPmtpMItYeMKBPfZcFGDoQh5F
	 eg/RBGK8xrzT//LjJJfL67dy5nVKX2+ovSrBjWPwhm7IA/tj/aAE4uChOOBNiFWYOK
	 MiQBIy8YbjzksIXZN2fZHEsUF+HETma0Txwl+w78W1jYWW6xhvkb41iZkFusz0GFpJ
	 IqHGldOto1W12/7IDandec50yELXRPZb8eWSzcRoK531otHb6NChjztsVWuKxNBLdC
	 R8dHqd48r3ipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65777C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170085049640.12082.14509384441637849009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3a5131c7a1392929bad8ed47fd3f74ec41ebd9a45eda010c5d9710afd672bb
Date: Fri, 24 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700850496
