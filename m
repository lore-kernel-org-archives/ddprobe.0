Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8148494
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B655C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672923687;
	bh=hJFN7qg0eo5sXN1WzgtcwD5ynWKiK/eCHTv0RK4BerU=;
	h=To:Subject:From:Date:From;
	b=eQ7ntBhLJebaQIZBNv1vFBLNyCl+jdjEra1Mtj+ln60fvRnh5gnZDryvz7mkhbSuN
	 jaJfvWn3SFhUarN9T9p9YpOH3uVvqoQnCJEG+FE89T2d3X3TWe5FBSY7qr7W1Ijosx
	 jyfWhjIG4Io+PhJg21GBIgHr9Vf7VyZ0Z2ZhNzEiFIG2yt6IR6t35jhhlTeGAGepo/
	 ITHbKUDz8NKq7e+Mg84kAViXPTOpcvEwBtiD8n2IkGt36mc8QNeUwWIy6476SBOiUu
	 HJC3nM3UZ8GykkXIsY4PBjnyY6mhUC0oXOcDJpDIJnBpcf5kba1GrZQj1PsDqUsu7e
	 wD05IyGFV6kMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63221C54EBD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292368739.18411.11392368974423300304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b34a2d8316ecb8a0bda8fc936edf8e1fe42aa2c9fa50c95f93aae748139d4e
Date: Thu, 05 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672923687
