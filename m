Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EE07E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB10C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666342853;
	bh=xCRDEz7rRIsRHqOZeJgljE+7rUIhYHz3He9Ifen306E=;
	h=To:Subject:From:Date:From;
	b=kFGzPPElWRhjf/wCv0ZF+GjQaY16r01BrG3awrZLCv/oTCddbPDRUj8GksfVNI+MS
	 hXonbxuicYMCu3teeYbBGbUOdf1sMy8a9pm7t4UFsmfwwxWdfPHx5L6P0qLdFr4yTq
	 pbH4HkP9SY+85MRV0G/yN9YTr1YCcJ5VTjLYLL1o31+HNYb0dcNzgHTiEnRFeFzNCr
	 iVgz44J5/xeoSSzmv6YFqwGr7uuLr7WYTWvXazp50oY01UB8dJh4GeBp/mw9WX44WE
	 ZZuplWXwqGJQeii1J0/YsFV3D2vygaqvnA/JzCCFvn9xqEH57usoX3k5KkjBpg5szx
	 bUlKl1ifTeYvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F79C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634285335.9095.9583734867152056884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b134475f41d8514cfab309dfed4611fd56eb04a7601ce4d9146ea2f508d47d
Date: Fri, 21 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666342853
