Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC88A55
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E5AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663678253;
	bh=ZFzrkJpL3eWivFl9vIj1CSvbBPR4Tq9iyxQs5RqR9mg=;
	h=To:Subject:From:Date:From;
	b=J7q9xMZJn/ASJZa/1JgCNudrIWcIMuWG4Tl7zHj4eVG4bhN0zOtazQSVGZYUso1/a
	 6J5pdu2Saom5ymOVTGvLCFRjEfBIxSoBuBLzApEy4mD3fNoSvLG/hmdbTn8TmglDzF
	 lSSM1VKQEGSK4FOeI6ZpeHlV8a9EridDNXiIlhtQ1PYpxN5ACcLWJm6PQWf0Mp8RZN
	 92/F0PocPfbTaNeJp/FWARJeFhrwm7hps+r5m5raS2vhZIoXt1qTk5n+H1A6fwZOoM
	 AZIKwxbr42ggNAaHCk5ZXI8SONjziPy3+Mws/76ssWdVWUVTp7iwazbdVix3EKqCip
	 SoU5MhLd7LJ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B87AECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367825336.12619.12191161279049879354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6af0f27cdb61082b6c7296e8d8952a74f827b1055d707099ea5bdbbefd4496
Date: Tue, 20 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663678253
