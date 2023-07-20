Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772D0171A4
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 07:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC98C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 07:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689837728;
	bh=R8kE2qJ4m0vUt7KSV2kbtKI3XMFQqCR694x5IyXprCY=;
	h=To:Subject:From:Date:From;
	b=o6nB6l9YF0y2iAzd9T+ilWlcH0QQyrZ3XizROgrpzSZQF5PoPx2fyZp3nuyQuURYJ
	 rVQHlpaJCuMqcpfL5knAj6WQJ9SQ6gNPZjxoZjUoXBl6bJ+QwhKxCyS7fF8er4groo
	 xtTMOaN/4bNnlgsVHD5Oebmo7CWmONt4IzUh43BfO0WcI/vDB1Z9XnxLAaoTuYHOa+
	 ozojFcuNx32XW3XuFfbeuK47lUgZyjdTRKIXnvZuAjQdSFR7AKqBtfChzrwI01sQsU
	 kD0ADgrQavtqQHH4Wdcq4NEn8dBWkV1Y4OSAJnumzCxlzMh6wjI44e23n0dUy6DGk5
	 HBSUEhPJ7Cx+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0303EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 07:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168983772877.3204.9845552420719855277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea03680c58ee607576dcac1fa0e92a2fb05c555cd74e8de1d3c483de6da47fd
Date: Thu, 20 Jul 2023 07:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689837728
