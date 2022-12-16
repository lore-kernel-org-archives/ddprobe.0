Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CD320F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84123C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671209487;
	bh=+WHxW054/9YhwFkY7+lysqigDWxbj2wWe0x+gFLkBZU=;
	h=To:Subject:From:Date:From;
	b=cokvPROcJQaKLMHE7JlV5XzQ//Rcx9lD34eWd3PEB0fqQRTSJBmfdzp/GZ/fGgvwx
	 B0NrNd0+Sf1W99ELrGX/sqhJGtwXU1NISIqdzfZgvJdkRmzM1Jtau0DwYqSCbOWu3d
	 WD9/XiMJmlRpa+ZtvY5rkpKwa+B05GSsEkU2LqGEdsEM6+8TOhMAU8LHihthhJ8FAk
	 MBw9sD+E55iUTrqI4jh1igIWqc9DOwUn5gKBzb+XyEF2Csbv7jkDQe3Ry4Cs4YUrLZ
	 p8n+1InO7FUscuAE0Yvn7QHZPw0d+/vo3gxHoxwLcqNLAThjFHVdR5+JywnXbaMiZ9
	 cTAkAf+uW9mzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DC0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120948741.25272.3721386194918004326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82bdb928f029231f5dd7fb1b286ccfbbc242160350bb7a780a80b94501f4c1ce
Date: Fri, 16 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671209487
