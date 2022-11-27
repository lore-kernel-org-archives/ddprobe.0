Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1E4256E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB4DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669548054;
	bh=yVCXkSThEFYbeawpDmXZlVcUQpj9PpV2QmxlP25HKmE=;
	h=To:Subject:From:Date:From;
	b=QnNLFEGg4ZmekKplOBVOr9Kz23Ggo+GIL9+J6VC4ao18GizJaokRugJL+hpoP26v3
	 E5IMu8J4UcY++JaILho3Ly3yGlzZ+AWFRiIwnSjM5wdvTyYSkxUIjD6HCTp9dWtCyd
	 2HZKGk1eFk/0zdDFNYvi4oqKXkArCYnWIOPBLO3+hwUAHzAj8yvq52705lh0v7oWoV
	 srmr2EwCazD/BjzGifRCxlyA2Q1w5xPJV9jB28RBfCaOs1iDoUSwOC+A2H0kBBXIRF
	 ey0fnyHTd6dBrbfLtYVxgtoBn0V9OeJ3NXBKvzYzsXJHJTx5e7grXtWkA1qKOtgbHA
	 puXK8vIwmK0lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5001FC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954805432.31717.9946269334076029976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56ec883bc538e96687bf10b578129af6b4d675766ef5d8e7c5f336a7e80c81e
Date: Sun, 27 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669548054
