Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944907C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67164C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669954854;
	bh=QXlY94Q9AqY2dARw0hKngJn8XsR8LlwZIOKQjP3g8Jw=;
	h=To:Subject:From:Date:From;
	b=NPJeNqiKa34dcx/xnHnLzMbKInFYOOASPILfbZtL0u0SuRqTmsIfdJBD8C39ZTc5L
	 2WZ2VfzCFVFf756gKfyKOfeSv3rLkjfIREyYsyWgiOX2hQIsILwVjtIJMbuCrKUDAe
	 KeG/WXIxtUJDS9K4OIaDpGSjgE3qTOTEavrA6S51mi5f7SlosR5s+0md+Q73448Usa
	 4YQhMA/G7Q/aH5Xu4s29MP3K3xcAkDdv2HnBv5bBPmzH3G7nF+VsS2EZtMjpxw0Fy0
	 r4kBzoT0JiEO+/VvqflKEcUFolkKxZFfnuIoVWQj4Zcl5tYKLSCdC9YkZklCf2+3RA
	 CrfToWWd0vbOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF9DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995485431.27516.14583470841365723640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f265053c22f70a795c16740d01b4355d2b405344043db114ef4811dd3d5c785
Date: Fri, 02 Dec 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669954854
