Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3ADD1366
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D867C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673790087;
	bh=nrblLkTOnnLal+DdedGQW09aa1wsWOo1FL6WyAEm/mE=;
	h=To:Subject:From:Date:From;
	b=tNBloyTyqxYLpc32m7w1VPnBzv9RD7oPBCgrlGW4qgXYGAxhMywMANNcu3lX/OhiN
	 P3HgavnnRs3sMY6Bkrvt1bNNZLw65awroFbnOBmHB//6ygsGqoJo9l4g66buKIwoCH
	 RcP+lGZhmN8YU8kIjFmUozgO+fbuXesx3tvJy9fbPbDvUTYc0JK5NjFUyruBXoA1c8
	 WL5bAUVu3nUqd/Bzc7OGIRL8nDQArO7tjFaD0oUABUSvpeeD9Q+hBhnDE2rjOGqGCz
	 D9xlsSal/p+9ZoV5bFoS/+haNpsEIT19i4hAMZG04DClarv6BtEZ5U9+DLmMF8DCvO
	 pyyVgCtBdVGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61483C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379008737.20715.3065741709927155324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75ffdf4cef7a9cab4ede36f6c30ae862d8a09ffa9bb161675db4bb2bce7998c
Date: Sun, 15 Jan 2023 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673790087
