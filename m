Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCAA10E6
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 02:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A1CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 02:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677811565;
	bh=P62LBl7Y8u9Ec4hZQKxSBRTNe2EtTXnXeU2NGkr1UBo=;
	h=To:Subject:From:Date:From;
	b=n2nf5unMeDpzM585suXBTkX4MBiXZYs/0bhGhOLd+uj0XtvBz5+S5Uv222HUeLMS0
	 8Zh/gWppmaMtMBEi0fOToAWCSkncvGm9rWX7qyQ+Qm6rbYZ3C07hRot2xKrJTd06J3
	 LDW0j8PYocElPN4xBD8lM/MDpdaZVWXrrbw/wPpoJqAAKOBP2IyFOYI4Xlwi6WdcY0
	 V/PGbq5JyO+bHcU+LuPHbAvFOSJiI1uudiEeRre3lFdVmW5Fz8D1dE45vDtmgSwSDI
	 nftWCKXaEAQjIXMBVIqTALv0nEoG2y7Kt2iPcmPqDLnb7LIXbS8gB5EZ5MFwyp82Oa
	 kAit9QdKhqxFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4995C6FA8E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 02:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167781156576.7625.7668989497350354547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94075ac513557a7e79ff22711f5bb0b11b5545955bfb2a2c1de799823a5520e3
Date: Fri, 03 Mar 2023 02:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677811565
