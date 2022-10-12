Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF6A17CA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D427C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665550253;
	bh=FO7WbNdfaSUvG5Pc2NLJclT9JMtz2yOLFo05sLZipEU=;
	h=To:Subject:From:Date:From;
	b=YpR+vBVTI4FxjTKhn+XEQ3IYwvmoAFR01d2/N9Lb04bdkicQohcJ7jEafuE/vd1H7
	 bfW7/trOts48pKpwfZ6EcDyb0i7A/KVE5cQFdM3l7aYGjVCBgKdcK3JKDsbaMxkMJr
	 HhB63qJzV2hhn1U0iZNJ8LXtuja4bnpaxUPfhVQe/ojMBTdXFJmJHdw8SJZnAfPrG+
	 0oUioVwKJ8oGTjUwlaJhRE6DvMifhG3FEeFi2fftRKTfagVrAUc/xu+rKzK5hfuNID
	 +PGKG6tVNRH71xaOrh1AMWkqWDKeQYF9vqp6ZyRCV3hnaXiQ7hB3QhXSB5hIVdYat1
	 Srvw48tIPspYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6055DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555025336.29476.10595068540562133342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2671675132793f5be1663cf98619f84a0e40267c54a9ace2739a4b1f194a1cae
Date: Wed, 12 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665550253
