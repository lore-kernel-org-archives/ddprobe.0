Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC8E210D
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75595C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667220654;
	bh=tOs2gXiSQN+Ko6YigeZp6vUZSt+tOClHqypoNrjy5Ys=;
	h=To:Subject:From:Date:From;
	b=foSnuHXsdIWL0+mCcYjjwnhj0bUN824Nt8SSTkQnk+soJVxo5U+4UnmL7TvSskTWL
	 BHIOZE5BaSoEjLpKTTUoRs4IP2LDWAtNYo7EgkHu0dqNAH28tfClWwRVTXY050Pbc9
	 MXjfUgSdEQ3qXXE7E0zisz6mXwLrBj642n14uq+4ZLd1W5AjxC0s2ARslTHgi69Azw
	 qK8Z9fSpo3PzR4yW/h17NzBK6MlBRL/EwVk/eKRStE9TAlMhO6T0Gif0p3bOO6/SwY
	 mm9TGENCZNlnwYctbBJp4IrSOLp7pypqBH+hPSaH8aIh9YPQJjvAAWgx9Xz47OTkLs
	 p+ezXlFQuqWNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EC0C38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166722065435.16775.14574654924372119337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4f3d650b3559e860aad48ffe6083c99159d933226118d91b569d18d8feb953
Date: Mon, 31 Oct 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667220654
