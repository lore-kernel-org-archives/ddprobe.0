Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D255C320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F194C433F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672665687;
	bh=bh+CI02C8K2uKeeGUbzOh2Ujnlfz9W7CvAoy/wlhoFM=;
	h=To:Subject:From:Date:From;
	b=Svwrl2uZxGHG17RIc3LbIma2CmvXf0Cz0oUta5CBG1To++vb3iBc536Vgy2ZLTq81
	 7e2cav6/o/r7ohRZO3MTF0mTLDsbsqn7AjRXySY4Sw7+dGer7Xj0/sD4enbzfkpfC+
	 Iz3OWUEyneLnCj1cFAEn/iu0QNQ5zki7fMloQUBZBAK2//cbre8m3a70ZJ3+qQ8IgT
	 VV/myJ9qnVfsT0nWgjqkdUe7O+f3lV3Nfp39GgMmV/If3VzuIH7amUuHFWqKya568K
	 HBd+lq5f5VF0G6gAn2ZbKNjYqgxt4+xESThbt7e6PzXbv1X9iJICE5/sV8YWNkPOF9
	 VnSKdgMxWtCOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FDEC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266568739.10038.16460172741660391531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a203c0daea61cbfbc8e98a4678ebfcdd8a80280777e04f8ab3f869266608cf
Date: Mon, 02 Jan 2023 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672665687
