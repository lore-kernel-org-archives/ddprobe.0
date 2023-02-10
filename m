Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A8A2F41
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE10EC4339C
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676069045;
	bh=CG/xMa+8sm5ewS1f24UcDY93kE8ucF+/ZYg7wcOumbk=;
	h=To:Subject:From:Date:From;
	b=fox1pS9r9IXQ9Mtgqa/z2ebOXUr0+nQMOIWT2fO5SzAggVyVCmBDDS5yTC6nVDZJy
	 i2ibY6OBATl5sYTqB2s5TUv5kqSCMt5GrZJHsDxsd/zb0ogmKShfNpmaIoaydpHoKy
	 TERcw7U8c49PLl3aJ0+SQeBRWTtPTWJ1nCGJxRpHbQFJH2ReDxl9Dnl6EOH7h3745g
	 7Bp8y9H0R1ZDrjMY3eKQb4br06Y2mBb+vY5wPjEgHqt4/ZW1UJJfDCEQc/regctJ5s
	 49gxtUkxuGJlOpXHXOyUUk69HQJe+TrjvJjGjWXg3OUhrnnK665IYl8E6urFZv4nHQ
	 e/DO9pzt7ZxYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B326DC636D4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167606904572.703.6378815162837433014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c826dee845a1bbd1bc36cd3ab210b24d01928eb203241054782d7dea2c5ee2d3
Date: Fri, 10 Feb 2023 22:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676069045
