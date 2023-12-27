Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B16C46521
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6oGQ+G8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84982C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703703496;
	bh=bBKc8MNiK1fp2fhdS3f2u3liUb+likA4b8rei1ErtUg=;
	h=To:Subject:From:Date:From;
	b=G6oGQ+G8ZF2RjTFsoE0o9q6Vdcx30bJJfZLLIxfujq4mLvUtXp2FnnDFMfVCzxHAs
	 E+O/1vwWjBNhlbcCQ83zvzeu2ZRtdmwE1jn1tG+F29jAoZoq1cQSDEWuOucn6q50Z5
	 Aeafv89ONPVnRZh1t3qTD/qU+UfoEXSdc5OpJZ4YsDn1el6943mhbAwsUR4//bI2oN
	 ehvigC7kRe4kliWlJ8Q3j8saK+yUX1WFP+s0wjXRtg6QTWJWGiH0Sg9mfuWJwCVNQi
	 qLJ293mTscx3ORZthLHq+FJYjrMRDABfcOAM7OyCU+vGzF/O/JLTZgliWiFOycVW+D
	 yae0UYex/PCRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6996EC46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170370349640.13362.10249360062394834651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bca415ec6d81b4108d12d5b1ed3b813654bd67e23383902923bee9ff3ebe18
Date: Wed, 27 Dec 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703703496
