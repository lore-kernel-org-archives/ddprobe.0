Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50E47E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A314C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662137453;
	bh=ZJmNgp5FdEaGKx5ot1B3bBmluXeiSJuG5sD5o6qXJ8I=;
	h=To:Subject:From:Date:From;
	b=ne6fUxDoOyV26LU7IVjNLG5YtPWrm6EkGr11ZSwtAyrjmz9KB5aO7OHNyfjAk6NFm
	 LWq6geK4X+S1BGLz5eTAbvBHkJ2IMVrZQbzFBDXl6fmP4ExC+SpNnqUNTwN6XwN+Vr
	 8xAdOmFM4FYbdBCu2KguCR+4EtTU5Ztc6HhHALcx7Ofa/CchGhgYQA42hLs80Xnn3/
	 8Y2AwdWWeLR2zxp4OpWSsvRzzCkK5OXYsmokqEZbnFILOwDnAZI6/zbrxaLur6M1XK
	 K9Jh3bzKVqUslJNuDLQdVAx2j26Ln1JfWD2vfpVLe/pX30R7Zp1xXwG5e7Wo9a6XDS
	 2SZayPXMEiW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54177ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213745333.30808.9962290709907823431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3346544a8995b7fb1dee33a894a994b9a76ba1800e80f55687a78599c0190e
Date: Fri, 02 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662137453
