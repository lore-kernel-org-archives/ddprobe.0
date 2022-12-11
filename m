Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF6AED1
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 808B7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670740287;
	bh=MqVVuoOl7n955NPunifmt14upiMM5o7EGOMw8Y2K8zk=;
	h=To:Subject:From:Date:From;
	b=gcnGIB/Dfo+h220914v42Lp3WESSvHnZxAnr68pRUNMASqDbzkjrjCGG4NPw0RPhM
	 XVn5OfZpy2t8hTErCmb8z66ovYV09wxLFVI/kX8B9xMQnEaIx36IYfh4xe9lyQ9u2Q
	 +5Nfn2v07X1d2BLycjiZDa0jgkx8jaUeTsmeHMDfC6FYV9DCbzV22KcnQhCVoJ8Xzv
	 3JWIzobUZbnSskFmJJISjS5p4eAOYx/HH9T1F+WkYk+mhxD4ZRS608YZOg52ub/FLE
	 +hp77FeCCkUlOWYrQugukprWNnxgdfTQSqX4GQQXRuQzZII1iEo/35tL+aKqwChnpN
	 i9cmB7SLglFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65587C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074028740.5669.17848617071507249110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa3d0acaf1cd50a1c6938050631ab6e8347da3a9601b8ca5396e9cd15f303c7
Date: Sun, 11 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670740287
