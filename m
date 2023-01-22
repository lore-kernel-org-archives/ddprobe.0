Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA957E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E12C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674376925;
	bh=on1mmeggvOj4FFqIV5FiXAVkhLZb2/4Yzihp+0KND64=;
	h=To:Subject:From:Date:From;
	b=KaYzjP9ZCAstUPwV692uRSWnFPZtVFlNMA4ZPvWc81Q5Dy5E98k7xrCcS7Dd6VkJw
	 AVkBaX1xojUCMHGorAWRznDgh9nAdBvnbAgIinmn+X7Ur65IYsZarvpSFAmlINp/7Q
	 b0FzFyH622UCMip/+eKJaKl1hBFsWDCp/1kjeEEw+rkBlEKkPwc87eSv/TgxXmu5F2
	 Xr7gtfgDP0OvmaJtUXgeS/mbq+NA/o9la+dalNXEsR2DAowWkJCyZE3i16KfCk7JT5
	 BLQWk6vtVRq2//qHcS6OGsAhpYgZd4t3V/ECsg40QI7SN4dpN5gy+why4BEEuKr4Sv
	 ALIk2I/ErUtoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9225C38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167437692574.9162.14938291852314880247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ce92809d9a1ad46d3a496c14db2d8ada85fb89683fa21ee1cdd193e432c26c
Date: Sun, 22 Jan 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674376925
