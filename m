Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED860642
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmVqRswl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76608C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701657496;
	bh=vkSnjA5DzbEILu23luryaY9HDxrBrlERkTYk2pAgqpI=;
	h=To:Subject:From:Date:From;
	b=tmVqRswlYRPRkFmduklIi4vNCsFpkXgKOUvBl1tDNFk9286xCDstkVT8q1WEkdTxt
	 FIO42Zyx0kf5Zt+ncBbXd5jjfAyg3T5EfNyKrAcPqFxK3JY3LyYZSs8QdefZLSLVJx
	 efkvAqtpKUzJsiTFtyRudmBQZMUjUqqKOVqYRI2Wjqt2eWMnoWiC+ftRkvS3JTNUEM
	 3xqtXkXpYHTAC6TF7t+TZn5uAU9smwiYoVmAivYO7c+HbJqlWHCN2cWpNejmzyH0ux
	 g9t4a1nGINvLzqoJGugGQmsRD9KGwy7GowoFZ0nO3koio7CbYAzcSKyjUBMHVCKs6R
	 8+MNIrBFH4/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B994C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170165749636.14125.5724492778046048537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1bbdac9632feb52eaa4e27e80c72e1d554f00f04b2f6aefcf06a189dd18fdc
Date: Mon, 04 Dec 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701657496
