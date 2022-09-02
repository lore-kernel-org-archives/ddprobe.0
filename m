Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FAC111E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64C30C433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662116453;
	bh=SHzno0a5tnGsrOA0Dc1ZWGLRrWXlNOpODP5CLnmPPn8=;
	h=To:Subject:From:Date:From;
	b=XYOcZx0/k1SdrF89Lk59dWzOsk4P/wMd9S/YfK8nFm5HUODqzIZnSLwg65n9J5BUf
	 i1ocJouGS754oarN6ZpLwVrMwKZceZILAC2FsaZJ814cJe/BzdGk6Sc4w4PBxVYAkV
	 SkxoPWHpmEFAC5MKCt4gpv04Fanq462C3NxV/41Gji9RPbrg3wC+5zob7puDgZ6ifa
	 KKLI3A3/PmbPUtJ5UB37HUkDVAOAIzWzHG/RhenD9GZp/0WUIZ3FCn8f/UbIz2GMxf
	 wo4NAnrHGzeITrq6P7ife4ZYoWvFejLtX5yB1NuCQ+ro0Ow6RmawbJK4oRZ0VXUJDn
	 2b2DGbihK+pHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA07C6FA83
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211645331.8604.9227030920563840275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fcb1a8a8c6ae8cc8dd6e12c3ac6913a92b6ca6d275d9b8eaf5531657572f4a
Date: Fri, 02 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662116453
