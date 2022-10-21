Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDF617D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9A8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666332053;
	bh=1m8h7kqZubibLQkk6bA9T9DfmFVVwsPcdJQHz0V9B34=;
	h=To:Subject:From:Date:From;
	b=Yqync1c79Z2vvyhBSJRnGLus1dzlJDZku9UCPdA+GKxPfh7eAjpUqNL5J1ne7dUCc
	 SachlO5JDBPTVw/ypKiMn2l6SlT7P9qKB985EFXB/clnHTklxjNQVwUmw/cb8x4CCI
	 UqdvvwmUylOGvThjjMi8oxev8tysWxgwaSPRZkvTsxsGdBkrFo5exG3JmmONivJXpl
	 SxDFsfAQSNcJVYJGUvdNo8/+8Lor8hCb6jGeCNjvGEPI4MRhakP/sRl1/lQTgEAeaa
	 37DwyNPF1LAn4mWcM4PK1f3rD0ToWEoUMmFoyf027o0SRnlU3g7EHWu/gD2aVO6k9w
	 kY9SEu+6O+2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51525C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633205332.9064.584844740300182129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119751e558e62cedbffd2239508f6e7da688163805f00da14aff52691f312802
Date: Fri, 21 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666332053
