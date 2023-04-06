Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28944E4DB
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4735C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680825485;
	bh=V3ZvOYyXfyONw59SR2qYnoSNkEc4RJZruRNupLRr6o0=;
	h=To:Subject:From:Date:From;
	b=biSrktIZ6W/CVrvstsJXck8gfjzAdpp1osypUOyFwnt0C3/xzIrDcD5ZU2wbr7mmD
	 y8kPH5K0mTpvWE55ybwop1H0Fd4wfqzO7guSinO+hXbkjVecbSPeatlvU/qKeyWm6M
	 UoshkjzTqHSAFERoTmoHNZmkKZ9jszZEAa8GeUSaW+d5F2fWTBvntGE8mz9pjHxgD/
	 NzKdpoX7h7D62WDeJpbb4uZTKZwAiJkwRi7T7BIUqaWHohV5fGFVvGFLWipNNZmV75
	 FzDHAMVOa+bey5tCBgKyb5CTiouec1xsoPv3aHqLq606UP8yTo1CtMWy1CO1LcUBiy
	 v58aAiS20hOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74D6C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082548574.32061.2089165117706888816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cfd49612d11cfb5cefe6d17b5d9b69a0b631590efffb751ed9ba8dfd3f0440
Date: Thu, 06 Apr 2023 23:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680825485
