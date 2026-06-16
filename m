Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496793672AB
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781618794; cv=none; b=cZXjMQJxPAnJa6IyrrUflsGoQ+YfaBka9M7ef5rtaA6YIR44Rd36h5U/rSMkMd/dzEUd75D+Wgwss6+StxePGO+CzCh2OBsncp9Rrl0WeQi/eWEGYXbXsfLIJ1o+QoGJNqNoXlfSn/lPti4ZLIDLgMnNk8l7eSEej9iV1QV8vHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781618794; c=relaxed/simple;
	bh=LOnexpjXUD+ogIxfGAp7cm0M07AUOT0p6DpsbkcxAwY=;
	h=To:Subject:From:Message-Id:Date; b=YAevOa5mJaUgF9soWFWhs52LY3OtS0KLafC/LotDpdr9bsibFkRwewUjsQkiK1ZAL3uA9q2z2nqaRaYqPzn2lyjVgcwLiDGeNwiCwlSzjKq/6Spr1L4zBW3dDi5PRl5ybgmYpvhg3ZJPUrVuyHsw/1NasG1b5tdo34q4EETrUqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiM/gGZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiM/gGZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A458C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781618794;
	bh=LOnexpjXUD+ogIxfGAp7cm0M07AUOT0p6DpsbkcxAwY=;
	h=To:Subject:From:Date:From;
	b=OiM/gGZ5tC4NJjlTxMQJjSojbBKttm6JiAqKvQO0x7CQmJqjdOUA0BYcSiu4zUhEp
	 ZqN+FXt09YoKk0gky1fu/x6rjJ6Vv2csSnwOQWHhM8Ud45yXLhOyM2u0FRPuuPE4Hf
	 dU76iKypb/CdCfYi6XzLulNG36Az1ZkH6f7P+snXiA2hyWf6ysh9UW0wx/Lx4QO41d
	 x062/Gxf8d6qsNbvC5aMU5FMtAttaxquEVgmLjvwlI5+BNMnFQpd3gfLolz4lD/iBE
	 tWh3zV2pU/HoAxR0X1PpKaZoJFSrA0SDZ1uSsRFJhmyiyMRJeuuDfmdXJF6u06wHVX
	 VgtT6zMLVz7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4E4CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161879383.24488.5295032259772119993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7cc09fc2db75e8e5307918161f0b97ea47b10cef29f14c5263e8ed261397c8
Date: Tue, 16 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781618793
