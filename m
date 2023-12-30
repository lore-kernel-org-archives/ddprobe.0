Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD1E2567
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scruyJxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9896DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703910496;
	bh=FO9I6NHGk3didqDp7FVFBZXU+RF7YRd/wzYZ5mjwFBo=;
	h=To:Subject:From:Date:From;
	b=scruyJxV+0cWv3kw9G+IIbxlKzTYtj5q/6O4nJFqHfrHjpuCwjBo6Yi2vxkccH+wW
	 6mQEsF7wgmxBVgpwGnsS16nRcRYo7wL86su45rcCqsUeLAyYiwRdM/xH9xhztlT6Tx
	 DcjEhft0I6lCeS+JEqtB1zt/RLq1YIgR+om3Wg4ipDXuVeI2xwhFMR9BWk4pRwP4qx
	 isrocmUzaeS1s7WAy053vnfvgB/sM8d7IKnkl6/E3kFdJ7xp+0n84qZ6SkHJXQ0SNX
	 GKy8FsZhiESNQGoDRoKDRVVeBk2owxSlNLzCQq0tXAip6X076W3XlZcZuOoblaDn8c
	 hZZmVt99qoqYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78A6AC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170391049644.6971.12291126528420058593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788d580ba4e39e414082147b58f63b34362b250e585bcb29c21348df10d3f385
Date: Sat, 30 Dec 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703910496
