Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549F7F
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 06:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 098C9C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 06:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683701466;
	bh=4P/VKkwPWy3wEvS/RT+n09G8RgpaJrLVREB1DMWxsbU=;
	h=To:Subject:From:Date:From;
	b=YmslBFdGc8wn8GjMXeSi3q0GiBxrY5tc+9xnXU6qMU2SW8RLC1nJgHkfa26hIW0RT
	 NsauPcaQbvwLdbqsQEc26tkRbG5He/rmAEMhllRnkkOBMIqF4eOya3ryqQJ0X7sfJr
	 rzOgt3UPRCJ9ObphFoILPkpylUn4y1IKvuEwgBuzopWczQTAS/ZNnCxsCgp7feZsvk
	 rdwYqjbnqv/EMmhrEb3EBzapr6Dt3JVYywq3pR2RZr8Mkd27x8q+4BZOx0CXU+Qxqa
	 lsUmtTB697HDaA5VNYu7ECffHquINwvAe1K0T/13YlAMZk9cgJDEYv2RcxAfU1pp7J
	 C/VZMY1iSy6vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1322C77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 06:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168370146583.1087.18350951832312449675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbee6bfbff04f16184e600950aab9a79e8ccf8f83207d66b4bf6e0473d5ca48
Date: Wed, 10 May 2023 06:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683701465
