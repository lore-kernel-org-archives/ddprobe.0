Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CEA7B
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 10:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06DB7C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 10:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680863886;
	bh=2CRJwxDBWDvovMxZG3Bt+j2uKl9M+3zLK9dYnPCYW7Q=;
	h=To:Subject:From:Date:From;
	b=sQajfulO2aqWdKUFGGm0EIfQROvmtmxcH+ElZFcjBDrksRhTM46e72X5N8fs4KhN3
	 CbVvkGXecTizkowr/1zy3WkWL6JUWts73T4atd+VFhgDjUgsEtbgZUvLJIufpGzBcX
	 3B1h9akrVeCjcURhxZwz2uHXukGTK+JLFMN/Jq/iXUV8kSrsgFJ5DOcE1wekltoObL
	 L2GEP4bgJRsVjbAKH2M45EJa2/egm/Lh3OWx3/ZHOwu135EDa1uEmzYuX1yu8DqNVA
	 OwFb9aLRDbNMBUEYECiIEsusI3A6DCcLUcjr1Ri8D8MCHCs5LfE8QfkbL9PzTvn6T+
	 XqjkJU+6TviHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC661C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 10:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168086388589.14033.18030270664394349326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2872f170805d1d930df1ecd4051d96d58d4fbaa8f0739d0770963de456d79f2
Date: Fri, 07 Apr 2023 10:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680863885
