Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20E13C3A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E890C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672677087;
	bh=UADXmHipFH66bPcO0mEznggIbcalwh81x+eRedG3jN8=;
	h=To:Subject:From:Date:From;
	b=MkicYCmRyNl/hrLljVRIaAVzoGg1HswdqliK5WTWqicmiVZsjYX3GNZC5aZpAYbiz
	 982AUv7/OUXNqvGsLy/MxsY2JlAlJYBaFQjMBysEkgMWN6C2nlTGRirUu2yptP+Q+3
	 BzyMjP3jHkxZyGMdF/jRvf10s5E5EGsQQjzfZffiPUVE1tBHCZRoX22NNzuc8xNYh1
	 9LuSTMR0mK4eFgR7hFfUzHkZ9AoUwF7lvXepPS2ka5JuhLJe2ENqDLWdQyZckWTvX/
	 RtMkXbYqQ6NKsnAmoOM/STZAtl5NiF4SAe+mSrgenGcV917vRfa5xpeUbzQNE4/jMQ
	 MjnbBT7nIKsvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E61DC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267708744.9898.14001639221707597684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762968760cba0049398a446589a3b0337f93678f84489af67eecbb1f9072cc43
Date: Mon, 02 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672677087
