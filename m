Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571601DA20
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF963C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692225188;
	bh=/MKVLY8YVLVU9ipPBLRiIuA+rbeBFYePS0ieg55yGN4=;
	h=To:Subject:From:Date:From;
	b=uRYOiNjETaRWm9Nn3bOs7vDEr4yw9Z6A+SwVTqu2XmPY0xoAyX58yY/PH7iQvsUzp
	 NkjnIX+Xq+fqDGZTow4dOqV22vlsVPXb8h5Ukb+JGA0inLFUxLP/YPqNoFYa0WmA3q
	 1On4tfsJ42KrkNpg8qhwH0SfN0241Iu06brC/lSBGuhpPECpML1ibBeINFGv82AWHW
	 EwxiA6taTWmqmiv7acllGdNXrJHJArX3xFdfadXMIitq7eGoERJ3SbLtak1lFIajus
	 kf2I2x7fFPsBfW9hnGLC/E8z95t87t0DW+CM0Iz2qdwsoaoteX29gez2dInA6bm3sa
	 0HkzChoPVrsQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCFFC27C42
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169222518870.13896.15394378942491988375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fbb0dd66d8ff3a46b0e1357b6f8f7d7957bf07564a3a48049cab94e780d601
Date: Wed, 16 Aug 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692225188
