Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EDD33D1
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 870AAC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672161087;
	bh=JJQztowa2HIsSTQsLMLp5HKnaNhqAcCo/bTneQRhJQU=;
	h=To:Subject:From:Date:From;
	b=MmosnZG5525Z1122U5UJE+9fdkM+gb1Lg3yc9EUiI0ekSl878cFDicgvPMT9UGNTx
	 U8Xs8SUhpjZ8pzTQeJDDWy//u6k4oAVVeDVlcRGLYeeiIDWRn4DGQ+jzIStZ5lYTvB
	 z9zvrqpghRrRlYu73Fx56NahYQ8VkTBv3sE8BVxOPDwADX29gXoJfZ3o8lYjrjMl8h
	 SW0wQ9O15JYxnrra+wlctntfWbge0IX+1H8DGpoll6oV/EOk4duw3bRooeqseFVGle
	 IqRfyeaEfNaGygwWA6/FAIMcOKXNVMTSyX96gZTqaBD9aQK477IPps2B2iZMsoUsU3
	 LmXCQ+/jfB2UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FAB3C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167216108744.8540.16684643895022817745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531d0f47c4f131bfe7776506d1ad6d6935e541bfd2e85d56f8d3f8fc87cdb572
Date: Tue, 27 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672161087
