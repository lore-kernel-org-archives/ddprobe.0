Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BBE79C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF2BC433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672752687;
	bh=egJHws3n3NANcrUE2eKdl7JXP1GLGm41WYHGeaCwK9A=;
	h=To:Subject:From:Date:From;
	b=PLcJxiwF4fRYdFlyG26huSBGjmtbW/Ind+JhDtBYwlwzWhr7ao2SzukMmYeyuGFJa
	 ERi4f6RNtifvpISl46nN64Cbe1UqV5wLHAwkWuQ876fFg3yXMXfLFiZ81jXgze1uvs
	 d0Ay+MauYNBIUTjOpV3eVauVVKU0WezzMxWqtb+Na2+5UUL/Yc3snsC7L7a2LOjhsq
	 1yBIQdy5xdAhAsqcZYb3EDy9gLjxjWbZuB/S8YNX6bQJ/6p/q+y5HJ6vyQUjt2ih+I
	 UcXkHjadp/GmadDSKdNw1p7dfvAOqjFq+nA7eqTUFDX0fMAm9+pIvvVJwF1r8tpRgI
	 MGY3qGvRMFRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BB8C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275268739.14561.11618574569099008179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f461d1fe3a01b509453ad10ba3c55d70b1d2d008e73f5578345dc8dfa30baed0
Date: Tue, 03 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672752687
