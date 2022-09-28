Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42B8A51
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD34C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664355053;
	bh=niF7n67IjSF9xjJL9G//MzDmxRTjI8Fxr+ka5AxhEhg=;
	h=To:Subject:From:Date:From;
	b=M0CVqApqSqDe9YXh+JQJ4gE9psbbvwE01jB++Xg84KztH/QJ52rOnii02DMha/R5D
	 HIuTE186Jq064nN+2nx6ph1sWfh4tnKEqXmYJ1/HjxUXjJEQOlKdMpwzpKyp2nALXt
	 CB8lMwJxSfqAa2cPexIYLIumGznYf3C8GLRoP+vm4T8ydfNpt93l+66GDcMv8ZgxHj
	 4zPwnjhXvu7LuGrDNzErBNHyg82RSnF4MAdEfKQQGSqCQo5ELmL+EjftoYM7Eb9F0y
	 +hSgL4teXZRYGzioKVxwdpAFn2SEBnnCzr8bh9tBaCSYLcNyfH53/RvqVlPUp+xgk3
	 OlXgz4SouPASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BB8C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435505335.31407.12485183476941499119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69a68b4daeb35325c7e2f0e353ad224a94954b4d0c836703721f32db52103b4
Date: Wed, 28 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664355053
