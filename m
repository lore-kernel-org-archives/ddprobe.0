Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74BF366
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728D4C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663383053;
	bh=w3dgb8VqzuMfgJRmqcuXTdCM5fr2W8HbKJ9FdZlyaFU=;
	h=To:Subject:From:Date:From;
	b=M/dcbzKgVJrjap52TP6otboezezo1r0jw/46+kQagSJJmKlda9nKrTkg00X3MpWps
	 SGAqQhO96HVr/2X4kBHrnUMCWC3yY1L/ngabMprHb9SD9/VP/I3YODKlblXTWqLO05
	 6dTdAhBTBeiK+wkvPFyKPVVu5G6wtyD15S7gZXVUp+L01DMJe2KbIqydTL+hy7F18P
	 m9lKuo+p5YwB8OR7n5Nx+2Ri6q4QzS+2xbpf5Vie6GeVTBxTxEDgGL5voxnJpt2so6
	 rVIbJhpJHLLp9tSe607kAE7syE+zl29esMQsd/fHBQDn0z4hMsPjO7QLxsefgSSYcJ
	 Ckk1HtLvoHznQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DCEECAAD8
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338305333.9031.15179584710745886479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4f54d32e65dbe32107ebbe59aaac97c1994fce68b92a9da86d99cc2b356d2a
Date: Sat, 17 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663383053
