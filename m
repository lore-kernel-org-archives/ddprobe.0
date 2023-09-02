Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBAA3C24
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFE9C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693663448;
	bh=j79svYN7WlGk9cze1GnSj/2Y3spD0SsIhb9eKDZsbJc=;
	h=To:Subject:From:Date:From;
	b=KGIkYQZROKb9/ecMV6pY7nkvKWFX9hpYmHqLH2CfBXgWDaLeFU1UQD/iI/PbGqjMM
	 3QKxk1ATiM0a3uPHTroB2qwBSOls7ydQ736BNwbFDfGi1iRLnROstD/Zo9mIN+xWwJ
	 mLqeJ3Y29Gjdad0GktnhSpq3VBJ9o4VQzTabaW116YWw6o1yCcCCJtOF4Vsqv4vEh4
	 aqw/DJ9CK5Lp5TC3GQ/cp0/BppP3ZlWhRPT0UsaL8ek/Az3y99xyFLBJDDFd8wKiVN
	 RlxsCCtHBKxodJ56MdDYHu45yUg+FstcBosXv1+vJ1dq/3iZfoM6Ktomiu0D4vkyPN
	 0dOMsJ3qT805A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAE6C001DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169366344873.12196.15315538973732210137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d42489c2666cb86f23edd95ea8438ed03480e29140ecfb9f7b73c4eea892829
Date: Sat, 02 Sep 2023 14:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693663448
