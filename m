Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53C16FD7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DED4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666734653;
	bh=NhZkaoFffcBtAEa+2t5j4jORyYT8bBy+5zJyTwBxVL4=;
	h=To:Subject:From:Date:From;
	b=V1OGvt/LGECUTzJrGzWug1wjkYvCWGzXrP4YOr3s0yyfO6BUJFxBa3NDfWIv9DyHH
	 M0Zhd0by5NJ4IiCYccxL9aUCGvXl26QuF+OQLNEa3pmYdCodQn9dPB1/gOCGgoFm9E
	 1tUHlFoXTXsHLafncHUQXhaUKDT7wjeOs9s1TRyiLWpWQJhjKWRefgzB1Ib5xBokB4
	 C08JXYLd70SYRngUAWT4moSA1pNLFr+lPPA7B/FtIACJAvzX4oQAM7ztUgMN2k0Tow
	 6HUFDsJMZHc7T49YyQJwjJmmQk0+wCSIxDMIg1pcYRRjIWHDyvtgaBQ3kWYoMRn+ar
	 Xcm1PVitAyTGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52721FA373D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673465332.6566.1097834879287748305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc6ee07c78b738b4bb0da7e60ef84182d8cc1c2f044ebabfa457449fa5854fa
Date: Tue, 25 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666734653
