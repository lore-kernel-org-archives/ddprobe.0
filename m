Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC2E631
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA66C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667292054;
	bh=C3VAWwhRvzEJLX6jOM1/mRWZdQlmqt8+1aH0LXEMK3E=;
	h=To:Subject:From:Date:From;
	b=syVvdR8c9d3kltCg8zV2BerY0VezQxS/SpMCKbInW8O4c6bNNvKmsuD9bbrJ7rsNU
	 LtIaLlhqhX0KOe95MnqQhzhP+gcT5wUWbS+hKmp3rVz8+5mUvt5pKgcURyojd/TppP
	 bBu6HfginhaCGjF/CXOlSSzFvJCwJIcIjg/f5pZr54RhV4mv66YiaibjRVqFTbVEsi
	 a0VMmN4+OXaXOv7xSXBxJG2Q092Zed5sympXZGoq1Qu0Ff71mt5HBH88WqJfJ7FJUM
	 DT97V6i/nQn8VsS+mm1HO15a7N6Yvdy7Vx6wdN21R37jQLEmg9kArKOAxdx3CtQxXP
	 LkWkgl00Pa3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509F1C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729205432.14745.5647255067972473319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5707dbb2966d40aefab565c0d0599fb748792767d8ac8e342a87409378092a2b
Date: Tue, 01 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667292054
