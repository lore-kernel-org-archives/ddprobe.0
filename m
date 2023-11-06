Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFA52F3D
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVpzjWlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82084C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699250896;
	bh=ImESuxlzBSBKUMqtjUk9kDxRHfE1IXJiNRE1/RA9RBw=;
	h=To:Subject:From:Date:From;
	b=JVpzjWlUkUR6m5Wkq+dEjEnVinZiH1wOMZn2IWSfuf/CLcjGZMOa9S8POjyPMZaK6
	 +SRYpNWouRqPsCW2FIAw9DPzaGD68Y112qoSzDDl1SggUKH0CGIixg5k1vy8LyMJZw
	 6OeNHf11ervHGJw6e5bzN45MNeK0bUFEv2vajyLS1x9uRt8SsNPCWK7olNBciCFbhn
	 MNnZhLSGwNkGJzuPFQQUIkqjfprnJJfCHWmehrrfFjdb1WTSjwLIHjIDQcCR8pZfc6
	 Ih9PcO1ZlY6EFainYjUvdLVbb+mxBboZhRLwr+cwPHuSymsGmY6p/ETu43M7Myyr/f
	 G7DO/zeJdsn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620B2C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169925089639.12792.13132773853272880048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e25e165ce3b07d2295fe9138648aeb8a25f8e5ef024c875e1782ac8282e7b2
Date: Mon, 06 Nov 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699250896
