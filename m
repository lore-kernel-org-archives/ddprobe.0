Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C7E360
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748138394; cv=none; b=jeNw1u4UqtAHUW9EIS+jx+mBlN4OhTy04GJmJizUqF3JqbXDsfVcZoXfG5rZPpFZXqq6PHnNwKrKG6WNd3rqDaqjaPTmB/ie+aIsU79I6wQIwLwIOU1v0YNprHt+j+tJ5YRRPUQ+Ayj0BYNd7MKur46LLZS96YWAL7C4M9/Xibk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748138394; c=relaxed/simple;
	bh=HtScSl0MpCJxHAzrc/5yfAekl1+EdSYXYXxLcJWqh0c=;
	h=To:Subject:From:Message-Id:Date; b=R8h0YFQCNOBZ3sddZVHIZfHfQF76FcpBHvKiEHuzcOAzSDb2E/5ZJMU9KIS4yQSL8V7rt6Y6edVADcXwSdXhvhIXf8Nw6Z1EdzaH6i7dXUiqaFigiXPNPwbWc+Rt/T2ECAN88w1dglZA4cadZP8/TvZ+EanHzo4Yh128GHmvqq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmeThDO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmeThDO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC2AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748138393;
	bh=HtScSl0MpCJxHAzrc/5yfAekl1+EdSYXYXxLcJWqh0c=;
	h=To:Subject:From:Date:From;
	b=JmeThDO6gbR7HyDb2JS1YLKPSUdeWgTx4Dr31MmYS3P3MCYPbLPYkqTcf8B6fszuv
	 us5l6MU0XWG1fvpwSx7h5Szqpsj9ww2QO+n0Js2OirBotfIGu5BCM39jhfYRUAaO2n
	 SSqEg5XLc+8CTf7qAkr4QLTGRqW0N+5PbZxCupdOWFnKiqKW8oZL9b7Jqj04L9EMg7
	 MGiG0fJ2biCz7Ptr2GTJt4Qa68LtkXcfd282x/V6aHqUKvRNPEmpJcC7WgGNBqdEMF
	 5s4hs3pSfOKwOpOOOBaZhdvBa8k103Q9K6vfxkuyWKzDwJnq3zfpiqqpqZwu3v/6TX
	 q95CvKN88DpDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D6CC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813839359.30798.14567708074409780944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe3e52b0a9fba899621f1c1ef024491ab2383d7c21a37f6be8ad49e2718fbd3
Date: Sun, 25 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748138393
