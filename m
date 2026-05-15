Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA753D3CFA
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778818834; cv=none; b=c2ocTSZBC2A4FrNe9gd7I54HL1kk+EAx8Jg1Rgm8qBsYb/6PYOsAph445Gki5LhZNSCOU8u9eg2PBBJ/jtgs8BDVqg7g+1vn2dRWbrXzU5hWAHVXAVtBW87bmNkLnZnZ52YNVHDJBJZ10ssiHstcBdkZ9c0quOBQ81OVieSGL2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778818834; c=relaxed/simple;
	bh=3xBa85mo4P0W2vqiR9IRGgdl9lA9cG22k/wlKDN5c8c=;
	h=To:Subject:From:Message-Id:Date; b=jmrpNqg3lREqxCXrTn5Dk2T3weOLwvq21+wbMw73LvN1tNKnojnWIq1qp35QkVkYQxFSue2so+/XTf837pE55DLheOUIq8N+AKabKiQmD1VLmM+/rnpFwtwQgFM9MV3u95DzDiuIvkjicLeCLuSxK5QlblO/2WtjOMVWlltyaVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZlMYN19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZlMYN19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D03C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778818833;
	bh=3xBa85mo4P0W2vqiR9IRGgdl9lA9cG22k/wlKDN5c8c=;
	h=To:Subject:From:Date:From;
	b=QZlMYN19+C4PZACx4UxSHRvfqkRj0nRgUGBN0eprLqU0L/gV6bGiy8XyWO5PVNOrE
	 KUHnKOKlXNYOxKUXYZ7POsQEPskiJWdaqNH11mp3PBLJZEy3F9Erg4Zo2mUNE3E3w9
	 yRrSAXoEBKtBfGuit5IlGIsfUsN4IRWTC6pX9s+8cR4KFmM0xFnezc6jK5vi5UjBzS
	 BWQ+3Gvr158k5NiO3lukxIuMmakQE7o00YnctOt/6/BI0UbIlJfbwOJPmoQeGTTVfR
	 2P1C6DHgMDJrQmgU/Ti4sXP0S9WF5C+wa3I47yxr80L4ncp3NipTpZJQ/WzR8HkF93
	 KjW5dpBcIOoug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD359CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881883373.15208.752872046410495530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da005d96b6e837011bab689ab93764f9a5b90cab20a99503deb7f22386689754
Date: Fri, 15 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778818833
