Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF7E813
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD82C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669011054;
	bh=0DtQ8PoZp9GjZiae1Ncmpv4yzvGdi77fLq+pjH9gxnY=;
	h=To:Subject:From:Date:From;
	b=OXrjWWXxYvCsMrL14uKB1aCbpFHCpiLe1Wce9tIz0xML9LBeq5wITmYkAWuVTpON1
	 iMdREv8l9OouwhwkVHRwULEBKbIkrdZQCgWRFRtw34vyU+iX1lmYQDZoSi994H+1VL
	 rGzXJcBtECobh7svNUM36rhrXMm1PLRH/hhfEOnKnj4Btv7RLgsXjckuyfW683Mjbm
	 Mc3bo3xGeVmr8cUXScpjn7TQmPGYTZjOl7BZamBlR6+q3v7WBPQHsmTcvvh8KdGoIh
	 XUXVrRb/OVlmtXIq4Rf9Dev7mBflNw7espdEpkRmDOpdlG/EMghVq21dUblJpNJDRU
	 WPwJT1vJ7Lk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B40C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901105440.9461.16578263539959820879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9496a3c94a9aa828ebb208128d3e5ed4ffc1e220b100269bba8e6b2052d1bdb6
Date: Mon, 21 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669011054
