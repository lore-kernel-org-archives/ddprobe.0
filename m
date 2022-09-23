Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59D08F41
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67870C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663976453;
	bh=O1E7tYAQFF82DlZkt9JH/eV9v7jTKxIjRag8l2L79tM=;
	h=To:Subject:From:Date:From;
	b=BoAZSpSVadaWmEWx3PnKTyG9J0Im49UvzLhoJlPQCqGPXll86qZ/g10LjRs3Dkcma
	 V7lznZl8UrFvyQGOOv9etjW5Kovdm4w57Oo8QTooYhnOkWjDlXLkC05iDXQgeapBmo
	 3FCB8/UI1t86bfGLarDloxZfpDao1JnlhvDiIuMN4+RmNHLzm02EufAsbEpyylEq19
	 m9WmSBiqPTt4V6AA8DZX6Ipf3ZpwPKev9vM1fJbLKut7WpDd6V4EQZiSOfDdT5XnX7
	 p2Cf1QZuhC9Fb0yizud6vn6Ai+VL83c4zKRw0v+nlgTMpTeqU1P4XCfNm2QIS+DNRZ
	 YCNemt68mhK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512CCC07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397645332.10737.12850504204918969318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564ac2626d1cb1e8f46e39aef2352a37a65b3fc9b356229a6731a12b54dcf5d2
Date: Fri, 23 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663976453
