Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3CA2F53
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74574C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661797852;
	bh=wiNehrOfJEHI/pm851BhmnDobzfm4Ccq0AUGB1EWyWQ=;
	h=To:Subject:From:Date:From;
	b=ivGpS3XvsLDydwdIa8vB12g+qwT+dPxJJ61V/OSeJUpVTAxQa/uli/Ss2eduyBqeD
	 k3Tuy3jLf5yYbhP94mBUfLbaMVh22u2a7iV9vt4CNfE6/PgYNBFdAcO34/LTVUHd5m
	 GYEuaD9L1p900Zt+zO6srA9fyxnOi2zDPzlhDA2Xq+ZxNAt0EKgs5w7a0DBHZP+dOW
	 zFlBtxQAbwEVpXhIi/c92HEnX6rybjdoUjaSGJOYIXBGuLCRwOsMsqcMt38o17boTt
	 oaoJzUby9Pk1RgXVb5w5EY0+h5R+/XbQvbu49Q53MR7oIJS4pDTR9nJBHqVLbFwrG1
	 qmk1CY/LAnZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56961ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179785234.28672.17212887782607657800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b159dbf1f0102f083380a407c1e1de6603a8de7623d0723161c3f916770a8a05
Date: Mon, 29 Aug 2022 18:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661797852
