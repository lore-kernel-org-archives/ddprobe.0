Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1726129AD
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMAf4Qee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84599C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699511896;
	bh=sSiw33vx4JBrYBmJtSGW6q/F3d/HHcrKQSG7VrS26tg=;
	h=To:Subject:From:Date:From;
	b=BMAf4Qee4PQ5UmbWyO4OhsxIOXPn6A7cxSStTDyo39p9hb9OV88aIYvHekTy53vUU
	 yNAIcWpiUVYmVtLqoKOFaGwmYAJNFm7LKSb0i7r8J+uR3YaPoU2LF6z0osaEiaiWmS
	 d5/zSAP0ZamvBwy2i59GHuVBRzhDvBRpMTa2FLwaz1AsmfGPZF+5IEuGLwA8y1L1AP
	 2bMkRXSYqz4gq8kaowdlgOplSZgPTAA3hQAN5bix2JCsku6feQRkWRJbSvNm7zKOdn
	 GgxsXr8vWSJXezF1Y71Xe2QjLsR4QArW7ULD/mSLeWapJoLRSE4xylObUdLqoXvRQ9
	 ntJFNf/idRbkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662D4C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169951189640.22999.12029000916116536011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f29ea0bfa0237349fa4a845da190813e46def41c3a69382b6654f569bc4681d
Date: Thu, 09 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699511896
