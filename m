Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BFB25785D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755658793; cv=none; b=aDbApYeNJywdSsj/Zl2Bnd6hMv4BWE7HhH7iOlcDbNjTrSdnWzA7Kn7LRhN3QuusQnONMMzJvpliBrat8wm047UWSLQx3BrTseZozUlFxsOFS24nOWFCaFkwjmb0SHq0YBpipOC2z1OPqMzuUVwCJygwk0z0Xgk4u0m+D/TeVhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755658793; c=relaxed/simple;
	bh=i8qNYoz/3ygoIW1qexxPkTC+cLi+z4goM4u/p9gJ7hU=;
	h=To:Subject:From:Message-Id:Date; b=WbfB9mMetwiZDbE0fDJEuh8EEG94zgrElTsxPRC/53u7GxMOSb7gYh2byMlY+Km9OOpVCcSUeAvTHG1MksWqto+jQc7JAvtcd023yQLPCnweNHox1gsuDIR6ZyNb2VpIcTJRfagiouroPMQ/H9ZCZvVmBJ6CjKg2WF9cOdyh4iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puKlOx8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puKlOx8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8E4C116D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755658793;
	bh=i8qNYoz/3ygoIW1qexxPkTC+cLi+z4goM4u/p9gJ7hU=;
	h=To:Subject:From:Date:From;
	b=puKlOx8EXkTBLZ4qMxjUDKpOU2nEYYlXi/01KBysEKJTWreNrona7xZEMdJnUg7Aj
	 e6iZ3SiX7XYDr7kEKUNaQa8Wp4yBrQJig1uriRNta+b8sXVmsRhsxapnXMmqcW2avQ
	 0MhJNhDdYkyrfzeoE5Zs1dL10y7Uxip8HKlpgLMDUrpTxdxC5v0WRHO2mCXdvdslzf
	 RXcA5cnR8cTvDveg84f/reC2u1vxAs/quzR0M9KkS4paPehDfvlB3yW5Z712ygywg8
	 Y+vVV5TG7VbK+j395t0xytoXnZbfU2TEYGYMNLqcyjOefCGAhXNtZ8+R9IKKAT05/N
	 AjyvoVQrjXo8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED88CA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565879357.11921.2214469056214831139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c7eb4bd3ded944a32f1c2d5a83b498a2e7d04158d5fb69aa040c6d67f43777
Date: Wed, 20 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755658793
