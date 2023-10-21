Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DDE17F1
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6/ldHxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98BAAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697865496;
	bh=jnLW6m0kNbbzm8pAz5fsT8QdrFtNikePPzNT+oSazuo=;
	h=To:Subject:From:Date:From;
	b=A6/ldHxRw4D48MKDb5oLj28L5RbCuPB/MCg6IlQG1xYUiep1v9Ls3AawFMulUDGts
	 96EInmxgoUF37nPDLi6Ef0jPKF7YkAUFLO4r0vbfftQ3s/+VMuSxfv7Xjeuq1ZNtWZ
	 +vpJo/mL4msLI4TiZVeuHAsU94R8enP0IApNEnNGA2Mg7Q+gzYL+uwWcu5Xb2U8i4L
	 Xzg/suoc4wUsaiVeDf6ZjkFCKVMSRk2UNsACzuoKud8rjIe2w9Wdc4011vFQusQvuZ
	 2JgX/vRA/0ue1SerC5FrpWzRziRViUwBFRIqajwrwQ4yjl4SWK/K2eBcUs46+M1o4x
	 ZZwU0kFexHmKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78E44C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169786549642.25191.542577909251439984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b318b2dd67f678ce6122cf484fb0d97734cb43a621841a4ad1eb7e8d5dba1fb2
Date: Sat, 21 Oct 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697865496
