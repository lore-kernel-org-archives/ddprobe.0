Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAB31D2E9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07B1C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689204548;
	bh=+DKtKWvHXgNAGvhgW0t/ZDrlPAnV/a348BZH6PZAZLc=;
	h=To:Subject:From:Date:From;
	b=e6SRgEpCiNfmGA4q1Jl/+DcixkFCHPI/rK6StpiY9sdRU/EdnSMQE583DGVAEipVF
	 ru5KTF35JiUUqv7JCYUF4kJqWJ6bzHfGsSdrE0plHE0osWJHNNJNWQQ4UrHTqfKrbX
	 uh3v9xvL2fDwZeuK8+vhIMs+2kkUybU2c6wakq1kIpif73Xxef0RjAn4mpNbblztHI
	 m/nUGR/IjiMvWqedzjQSWZ7rh7GBVjRtRLyNiqMyT0vVE9Dsbo5AlwEhe74vFCS6Wg
	 VieKWGFuDjqTHKnb3rX3WIgjaWIyxg8KeKpVs0vrh2gqrpC6b4oMlOzzdfUJx72n/I
	 VXNmOv7GH5Hvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A692DEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168920454867.21806.8067412622683148557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f345c116f01f4264beb25403db619763599b26108113f45777ef89bd29cfb22
Date: Wed, 12 Jul 2023 23:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689204548
