Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2F81107
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 01:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9C1C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 01:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677807965;
	bh=Hlr3LxV3fFRwvNGompMwgVWPD81jNdI2NNFDwRdBAHA=;
	h=To:Subject:From:Date:From;
	b=KV09np1R8CRsmoaXWYSN9ANS3vbHQfhsAV6OLL70guNQG3lYD7AbpsmQ2lFDU2mE/
	 LlUjtw+iJovoRCNLyf887x/yVHjbBNqRdGSBl1Z32UM2Rt/eNt5w7z+BYS+n8LlB7K
	 KO2ODD/jlBFfo60gz2a7aVN/D0RuyCa8wig78fLHxcu+szjb2wH7rD2p6NxGVJwV7r
	 T1YAbo+n9aJfL0jJqrILnYOTXK9liZIgJWH4oEA4DbVqmDbqjBVpbjl+F2m7IAGFsR
	 SJQQFZ0iOkCzL6MuQqLuQ4jADqFEMRQeweNB1EIbsh1l/LQxRr900dPg9HWCEnfBF0
	 8U4zhdE9x/xGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB35C678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 01:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167780796576.13697.18116495191228950117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562d9ae78531eeaf06cf9284758bbf757785cb41e3043752f54e38a4b95ca9ba
Date: Fri, 03 Mar 2023 01:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677807965
