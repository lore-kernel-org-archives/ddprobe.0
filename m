Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC1015AFB
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afxfhP3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64D7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697672292;
	bh=pDwJrPSQNHgRDh4XlLWMA9rSZxX7y9xM/7sJVnYM4+s=;
	h=To:Subject:From:Date:From;
	b=afxfhP3Rf5xy51/JkZyyc7J5kEBl4Znuhe/J1gqGsfYMoCpswsB+3qlvmv7fr1M2V
	 qXi2Y44AmCQk9gZF1DWLJEeAjv2Gso+b3E3xigghFrLHeD+uqJnV2s0gblvnJG739Y
	 o7K1TA03dWgXKA208B0FxnYwBRWHZQlthJrb28iWJFu7T3QjU9c0noTMMV3A7kU4Fs
	 zhBIELG5Iymkbb7zEit2Ic+ereUPxRZQ+SAVe2OLL+/UkLq0XDaTlaiSSSxXHVZ7+Z
	 pbHuA4N2pF6qN10JfgM6ACTfkintdezvLsNRENyGwo8vzRbVwdU5LpFfZjoXiZ1XHb
	 tBT+JY237wnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEDB2CDB482
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169767229283.18372.5035912963536410528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f16cd3794ca86bb0b9f6a79c9f5610fd85d756d620cfb0ed3633ba7fa8a111
Date: Wed, 18 Oct 2023 23:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697672292
