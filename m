Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF63D7ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAA1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666603853;
	bh=3AfU+lXCllNIyDS2/SZA8C3sO1Udt4A9tURdgTFMtsw=;
	h=To:Subject:From:Date:From;
	b=WQVCiZPkCj7ZqzNVSk6CMOEdaKEJ7FDfTL1bqjjXIdfeG8LgX6+AY8pLHoyvZOB+D
	 biQ3NMuZd5PCBwl1KKwrvjWov3i3bH1RB6HW3HSqpmKCVw/uuvtFy5TJI5tmSYkSQA
	 QufyMojAc+VIFjGWOQqbwJT8xlNDSbyNPqGvcYHrb9exy8/3HbonSToMq+Sg+gV2uI
	 7z9F4BgdqD5zDqG9pXtHKKRk1JP8sO1I8X5AdATyM3H03sE4mMOZRJiw3cbILLOA2s
	 n6D55QWSY2ayprxl78A5vyd9fF0WahVH21oFcgPf0zPSxJKQuUbQKCi5ZUJ8fQqHA1
	 ZQ1BCMg7TKuWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FCEC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660385334.11195.5185307658859787605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e63561ec18248f68738ab1ed60760f426ab11cbed3c688dc7629bafffb43d52
Date: Mon, 24 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666603853
