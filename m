Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCCA3217
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80350C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670519487;
	bh=sF7aVmXLP7ClD1k+pBm18cl0ymNlgjpOb6TAX/mH3As=;
	h=To:Subject:From:Date:From;
	b=WyseTuj3yFjAPlbtg7sAIuJ5KXiIiPNoEgarVAawlEyfmWjWohItg5z1tT4C8k/Rg
	 KiQfVcoBL59ejvSBhm6bQWkQBGGuBz1ENumeo54RdhUYJMM+8K0JkUjyhXq8gTgyZU
	 wv/zo5RrmSR3OfUfHJYW4OV+oC2Q/EEGpGQu+RRmWUCiIgOSBMpNggGYIJ9z6oA4Jn
	 aelzXZGXEC+/h4FPrlsi77D39dT5FxRVC7x+j/7FN0dVyzigDkF9EDL/0gQ0E+Ss77
	 OBO851Y8UPfeMuGlmPdyxT16q8aiJH6PKg5uiRq+NzYRsBky/duQ781+0mkgZQ3NUx
	 r/oH5xktuacuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635C4C4167B
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051948740.12489.13994828709267391256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c1a3ea4b62831d86fc7aa4413d61d9a6be1582ce8b6ef28c10c82e66892950
Date: Thu, 08 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670519487
