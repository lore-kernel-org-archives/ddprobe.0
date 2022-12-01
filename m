Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25D1EC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 741C5C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669875054;
	bh=y39CJFRpBkIK/OuLUaFvE8x/HDTQyVGQIohu/63hO9M=;
	h=To:Subject:From:Date:From;
	b=i4HKEftTt7DvY9gZBUSR+ZGCQ+U9MeDQ2pnuaodBe+cVdMDEpnV0nj3Se0xuWtf/h
	 5xT3ludk9kgfgyLAdP/LrIqiguBi44mjlkNYWvLprcXygCbhZ8IYTXkW8DEIxdB/+F
	 xja4bwZL/zJyZs12mbCSI+/g+VlaVjq0YSeemCOl0kNJvMP1ShDGGy90SbiYsI1gH0
	 Thdp1NyWutA1HfSAASp3n2Bjuh93iRiGdZkJY/x93KfksiIYBLuaVmueoSnGRfHNK1
	 rbNzrVQj0e+uf4G/qky3Tzpu0/L4FGgJ7+00CkYxbVUpNcJvwW6OV9hb7JYbGpz+De
	 ZZf6bqOmahvAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5531DC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166987505434.12134.6094375046054017444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210666022525cd3a8b3bb0ca85a078c62d603bef560b0781673d07e93b4ac42c
Date: Thu, 01 Dec 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669875054
