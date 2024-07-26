Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBC12E644
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722012354; cv=none; b=IcT1GRx6NufUf7mL+YNC6we+9wPeqhJkMUn/X0W6hGGTNYt0+FAxxHhQUQaib8sVyn6BYi6m34ao5eYigHpYmBP25o2fOqeCqfaJ3/X++hXP8eY70Tl87kQi7OdW2pC2jGtAGKhufRpuF1QHkAQrjBkBvz8hhH7+xRTbrOYqGpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722012354; c=relaxed/simple;
	bh=26FGC3oiAlwDzk3mlQCRtEQs3NSk4p5wlm/XzwC4b9g=;
	h=To:Subject:From:Message-Id:Date; b=m7gOaJZlNIEwXEn2xVoiLDMYlhMiCRyNaKFerThoXXCvm62SzY5J+n0DLO7jMHAF1oXIzRz8pwlyhAMhjuEz4PE34Q+FoJCkox/UoBczheIueAMYgKe+t1J2dsXoVxo6ZVQ6ZFupBfpTdddtvKqQV2ocY7qEvHLHjVCKQEex+sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+yWVLj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+yWVLj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2610C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722012353;
	bh=26FGC3oiAlwDzk3mlQCRtEQs3NSk4p5wlm/XzwC4b9g=;
	h=To:Subject:From:Date:From;
	b=a+yWVLj2x/SoK1tiks7eb8JvUNspvbrV6YWtInJutUGCoMY2fGVtx946hknquXkoW
	 ORUsNdSwwKnzgw4QXriAXcpNUaiqqqW5moQJsasqfVrBzp59n8zUNCknX81O8LwVBe
	 1JWwdbwuEOuwX1jETSr7cWlAu2lEhOWGFJQVahymDBuUBgc4m4p5amVi8Iv3Z6Mwe6
	 0axnZVid/g8xpffbZsKic/jNvzOlFPsQjNHzISLh8POfVs1YWl2eXVKLMtnevxlPzq
	 6rJ2liu3VtmlWtl0eMQK2W6v/vkCVSb6BOWBSFPkoOu5cnJk0Q2QKzRlYFTsiskp6d
	 +lgwao9NJ5ZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E220C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201235363.3538.17508191739395038499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106ec7fec6b5542e86bb3a08c9fd5014aa73c8fc306423dcd0f8c6f1634c0cae
Date: Fri, 26 Jul 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722012353
