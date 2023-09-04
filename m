Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0001FBD
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 12:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A36C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693829648;
	bh=yx7QyL7w1MPHMfviIBvkplBj2MAVm3Ee+aIVGcoWCCk=;
	h=To:Subject:From:Date:From;
	b=qnofZ33/a06QatvxgBpP4aklvTr9Wc2BRPMuMXTbmOsumTjEbgGBx6Qddb/322Rlf
	 78vfvmK2eNKSFDwL466puXAaRX5L5vSlQx7IaYRNrqKI5oajWlVDFi92OOvjoJnolq
	 CoOJojqy0K2FINhEVbgEQ8xpeNPyt4DQMosC+rnn2dwYb5Bznh9Ijjm4nveLsrSGiD
	 p3+g+eI0UcGL+T2KbWl6Cew6JtfbID/2Bfs20qYQFEi+Gu7ysY+QhNwPa4YzAfDb3U
	 DXF3bbtEL2reU8yMUURWmpnChn2kUNeW+OP9XfHgT9LwASf0L6WZBJ02BFuySdbGDR
	 eulJD7azAgOpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A905BC71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 12:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169382964868.25232.818990118576783386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22dd3915bed8972b0771d1c79ae5340e625385317a30e85eb036f52aae19cc1
Date: Mon, 04 Sep 2023 12:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693829648
