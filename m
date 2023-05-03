Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE962103
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FEC6C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683136806;
	bh=wf0/x5h6ELDKuaeFuldrlVhiKlE3lxymeruLCiKYYv4=;
	h=To:Subject:From:Date:From;
	b=oObuABnDUGIbWJwHux5IBvX7qv6tTJYejvSRqUsAh9075ZOhAQYW6fnc2P/AtmVbt
	 qFIRZFuVi1tYAwUy9DuRHYxDEjs0gxQHVNwO3ib/aymq4tOlmcQna4Jr92qWDR/AYP
	 77UxoBkXgBN8xHtGoKMVgB//wMXlJbjrBKt2IWUYK/GklWQ81Z0UhITuTDbXyi7k7L
	 JBB96AcPxjqR/k2qY/5Yte9o4ODpjsj59FCfjbysJKQ7z8LS1huA2hZPUlBlQ5JAo5
	 /py3Fi2FfZmZ1TqSPArqVRUslR+6yYCTH01QzCnZxkRJQRfFXuIrQwnz39UBQQd/DT
	 1IEeEYs8NmGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB495C77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168313680587.24184.9874767959485666059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc76aa15cd8e2f16b4b00dee6dc1ab02eb0b814ec5c9d46267faf30fe98dc861
Date: Wed, 03 May 2023 18:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683136805
