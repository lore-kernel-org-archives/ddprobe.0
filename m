Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1DE620
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 00:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HusygYeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8531C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697329628;
	bh=Ex1UkFM9vnFslx2AifZpIu+1RFjDzsnYMWyDOv/+v4A=;
	h=To:Subject:From:Date:From;
	b=HusygYeJVRohsTHQWOXf++7HWlQ6f+JiGfmN/8YyUMvXsKvmE+7VQkTeAg6IsfwW6
	 IGrsw2YRsMVp1h7stwPkGLPwR7cQXJey9WvahyUgLfSzf8FzpbwE5xSLW0uhl4hP2V
	 X6Mdx/eFpkHUxL7UtiWLVbbAxqbGYg84GZEszpnLEJLSM3TKsrhvHEI36KtliBnGt5
	 e8QLuDO4a2VtoHRaBYlxGx0D0MPNxbYt4PRGlorFutwaaFNqXLZITLZy2yIEcuZP+D
	 DOzbtpkkjS6qRsvulDW/FxTQZHZk7ux3M+0A5abnu2Tk7Q0rGY68wusCofagezcxKp
	 zYkQ5gV1BYLHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8F1CDB465
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169732962868.31555.2627832696793548125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb08e3815fb93a3b2d058c638062969a983331fae7c0a8bca3efb032e24a2442
Date: Sun, 15 Oct 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697329628
