Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180196FA5
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHC6Q9nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 908FBC433B9
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698056896;
	bh=7wxZY1l6e8bXtZePh+LzaNNdcSMAMtvgTKQF7dykA/w=;
	h=To:Subject:From:Date:From;
	b=dHC6Q9nKn4PaGcWSOzAHjITXu8Z+9bg5pkue9L8NlNlH+sQfnE+NVfgTduKW+viXu
	 Ck68fRqZ+bb3rqyghSck1dqste43KAV9o9lnHxEoaPpsVjBzbUNtsgF0vOa/JL30/A
	 /EvrSpR/U3p4Xw1zSUEzOeuJiMK5hmlOMZ5mMmQt6S6pcV+RmXJTw3Ajt03ZesIq5+
	 4fjbSDZ/2YZ+Ban9euz2E+nShT+bvPw90Z8fgjvCnur4xUasKrSEqGPVzkuM2YUnS/
	 fJGvr9p2KZTHYTWZqzBPybjFa+ofGZwG7elKqA/I8dMYP71w3/Ll+vWB0uSvIzo0pL
	 7j4T18zMHnfmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CDA4CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169805689643.25408.10226172482828585256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1a3fa4b17fb980a780d072699ae51f5c96cc2ec26aab613bddb7f24dff1ff2
Date: Mon, 23 Oct 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698056896
