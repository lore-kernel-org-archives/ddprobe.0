Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0951FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD03C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673950287;
	bh=LKInmJ6Of7ic1yZ07B3I9jbkpJ1f4f+Js/t9DSavlZs=;
	h=To:Subject:From:Date:From;
	b=net8OJaKaQDZbQy8D0efRpyFacJIEvwVRKETa3eUy2eI/atfkZ/BZCYv5IR5zDW1m
	 9t/ZpmCHlReutixDtMJ5p+PY//cnnpQRTSNwjoXOqvGqrKw/UpS91/ufJYolY9BO3+
	 tx1TlQCA2hVWgcBJZ9h3/Pr4fzKYPcuYeC43zkopTwTD9K76wYXOrfzjMC1SHk85YQ
	 oi9pQkLZ0MRRhwuhb+gw5aAi/PqfVMfuXnnqboCDwpf1k3d67KBtjVBxybOV71AGJ2
	 n8WDLH8nxFO/1o29pO5qsU0pI66QYsGgVZyXCEx3KF02MHI+1kwMiQRAdZplXTv+BP
	 FqxWBhYLWWHtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC0EC3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167395028742.2478.17906407249349095170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f2ae350c3309543a5c695546f80d50156e9932650879402f12035a7c063cad
Date: Tue, 17 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673950287
