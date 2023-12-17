Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1C3EA9
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTBSyPe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C93DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702778296;
	bh=sFYN8E50TN4prjHGDCapqo+37gNWtDVuDQC4XHRA/3E=;
	h=To:Subject:From:Date:From;
	b=RTBSyPe/io+5K5TW6KeYiuai0KXhWjkmZzfkNQw7cvNvMMaSBMbTrH+ptyeL3rvkc
	 DoECImBc8bGWU19VwCzKw3i/S5TfFd4msB4ghTQqOc4771dkQl9wjYEUtYLMOwFsAY
	 RLznszxgH2VM8OVZuUVwNta3CWUlSIGYJRpY8mecBpnUfDXHH6ATF0a2AMf2aWtUx0
	 IeNPikFeML5K0dJCdjFuItBLkILqIcfV6cL677+lStkq/ouuy/bsHmsZUZPZdgFYZX
	 bNbOP6ZhcrVkXUtycuN9zZ3l8MXXMsMdj4ARaIbDcx5jpp5lKgFBHgmBvRndS7+yJQ
	 r99t4Hi8xkQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ECCC41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170277829636.19295.18303969011063258923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a16a85b21247f670cb96697b40684bfdaf6f8104a89491625ffdc63362a8905
Date: Sun, 17 Dec 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702778296
