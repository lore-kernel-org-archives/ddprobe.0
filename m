Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB4147F5E
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P04sdbJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767A2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702673296;
	bh=Q0I60Zg/jbPA/c6StOKGiQCON7U3EqbBDQ8daUavqeI=;
	h=To:Subject:From:Date:From;
	b=P04sdbJCjQSOyeW3oO9a/H+nspEJ2UBitCOEbp9K9BuPCbnHJTk0l4mJBLWj3+rNA
	 gidvtEMN1e5Qo4qsK+IEQnzAMhw+truLf4Ye5/KR7p3hpYB5SQ4lYkNKBowcOhPnus
	 1qYzL4rNrLMKyvxedkGKG0E25TuFOF/WPyS/W9WkhXsfLBC4EM7a9SCm/9Aw1sJIyN
	 3GoBTwFoG9wyGV5Z4Ec6f+uUoiUyqCyTjLcP4gnBbNeGSheevh7FA8bi3jaCAYLf1S
	 7UTHrV1oumO33p0Sqsl7gioXu5Ca7Z7EEEfPoQ6AMU3CTw5jtQS4mel4rB/5o6CPMb
	 fN1XzXaMQZq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEFBC4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170267329637.29946.15368918629183606549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3cf8ba4fb2cda7fa795461cb8d7f0e02f893760722b46271c2c9ee0971cce5
Date: Fri, 15 Dec 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702673296
