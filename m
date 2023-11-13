Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170CE1D6A4
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/ZdvBvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84AD2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699881496;
	bh=NHQzf1JWyMAG51AKFjO+TqkewxR5xGF/+YhK97dl578=;
	h=To:Subject:From:Date:From;
	b=K/ZdvBvzNlR/K3Q7ydDYDnXvV0QhJv8El2hWN/g1QvkLPFfwuz7Ddp5OB06esKeDs
	 RfVhhwYhy9Elm+DIdZsY1eQVjOa9wNv7P/hLlVpT0LGhFqvpY92GlCHvm6+8e06Gly
	 N0h+xdIp9KiZLo/cVuzIJl4JMrWurAEHowRw9/51+OFGkpEjQbfWs8sz2lIy3eeYbF
	 kQ7FxdIwrOMkZuUk8FySh2m7syb16nm4pL1fAm9X9m+d/XVIVA5lOCwijM3jkeQhIy
	 e2A1OXoz/vHZsAq+MIUeZGTGjz4T0YkBAPfq4isvtwlbWL/5vs62FKscTuEcU8heHH
	 NIIRwa2dnp1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663F1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169988149641.32099.6622100835281739778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a10dd57b2516a00db7b2549c0668bd6c3f6d6b9c3781b2c79e84f80073f67e8
Date: Mon, 13 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699881496
