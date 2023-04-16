Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4324F63CC
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CFBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681680425;
	bh=NxKT2H+QDEhXqu8flw3VXDLEl1r8AJp+qYqT3MY/TQQ=;
	h=To:Subject:From:Date:From;
	b=jDK6ZQ9910pu1XDt75eh1OcfP3vPzayGm/xiiKm1605ZdAyaR4jq0DV+wUyTLX3k+
	 8TzHwO1XG1iSmEdf0ZF+cp6jdUCakk2HP26/+BTv6f2rrvjRSBf2uIWntlQB1/UP2S
	 wdoE75hw2i/KYZz7zkjh7Z0gu46Plb/Yit3UbJrpvITxQ6ZDTt46w5xlzJV+OvE/Og
	 N08YpzX5ZCwCRJpBsdbUBerdx8QjDhzVme8rdgGboOwfcD8M2rbiFpU+R6E4/dBbTF
	 yll2/nD05WbelHYweQfssP/dOcc5/AmJfAuIE9dlpgZb3xBSZrvFeyQ2EZIKBJ/cZQ
	 marGns1JXiBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6265C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168042573.3614.2042073831606711303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219e788b5a0124963d52b4cf6809a746b1cdbc58f4d56c85614b697f1ecd16c3
Date: Sun, 16 Apr 2023 21:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681680425
