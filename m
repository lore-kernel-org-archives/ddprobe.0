Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D27171A1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7eMl+1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 884DAC43390
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705094896;
	bh=Su2KNxzvl/SQKjdd7WrhSfeWneV4ufOWELgXAgWVmjg=;
	h=To:Subject:From:Date:From;
	b=D7eMl+1WF2j3hLxE3PAARlU7MVceyCEmw4OHVS9anzQZ7USdAuGLQgCPw67goxMnj
	 Kngor/50106eJW+U6VeET1PvUJQfuVBuTqTVuLe/NqlGV411+iu6i/3zK8bTc97dnu
	 mBk5ENLW8W0f5PbBtyErPsiku5xLgRpRJuTgwGXMfScRG6vYMtjcOrk9EAhktKaLtp
	 Wm/tQvJvfsvIJvegVcYiDgfMFNGHFq2cY3ci9JWaXgmpAKqzSEuzDNjjz/STA4495D
	 2yQuqJPKdsq2rH6fNnm0O/uudpqe3fMuT/faNqOdBWN7inN3wi4PB2IfNA/kR1Aoyv
	 t5qRFMkB98ebQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C9EC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170509489646.8077.18166192281829588159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9825f3dcd9d211a6633c97351e575e5193c57d740ab9c7429bdcde8d019cfe0c
Date: Fri, 12 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705094896
