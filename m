Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEAE1400C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754582994; cv=none; b=s2nU85gKY2JrK1aZ3PJmxh6vnFYj7YiWlMY4aUcwf2crlcG6sj+D+mJLJOdDXB4ipS44f5TB6WaFpTjoZVFwGrEgLvii3IrkLVp8cy2JLR2oWCl3ONtCs0ZedQ2etH7OZMN/+v9IqF1UNcafelDCbFe4BgtzMbEwRVlCGDnLQPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754582994; c=relaxed/simple;
	bh=d6JBjm6XGUn7ndfCUOD0m/3nVhdH8SA5rF+1Rar3M0U=;
	h=To:Subject:From:Message-Id:Date; b=XmnvyKIL8FVA5bKXXsxd6nb0QoH83gUtKS24JSPJ4XD4aVWdR/Byif6pmBI+QLHs6T93prdepl+aZCsXFNUY6qXGZb5fPmZi/8CScTe9zrdm6RssvE0PIVW85+lB2B8oAURMo0EYHxueEl756XwDOUQCP1x05ItuCmFXqe3uSbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gg9ke8h9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gg9ke8h9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A935CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754582993;
	bh=d6JBjm6XGUn7ndfCUOD0m/3nVhdH8SA5rF+1Rar3M0U=;
	h=To:Subject:From:Date:From;
	b=Gg9ke8h95GUE77AKSvQixEdPuydXP7mivfU2DnPvkx47lVlE2ttuD6cpPyQYE9C0q
	 TlOCDS1Rqh59XDAAOefgwIC+PisEZYoR1hhAbzd+y6/alin5DEkfvPZ75Jo9IJYIIh
	 2LY52cI5rLt7Moi1qd9LIS0C3svXQUcDm/jnkpzSmN4DK76hxkhZVCAl8X6PEPfOhD
	 fiEnb7m3y0jB/iP1W8E6f21j9PTS44MDWzSKZww3yPQu3a5P5Nnm0f9F7K/B3I/4NK
	 0vfoVR3Xo4v0h4h4XCtkaoaFKQK0P7mevmUm2fAwTmi1QEvwZ5/g2oMOoWR5qgctr8
	 fWqYsMNvw6NOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959E2C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458299360.11461.1255573932242969580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937cf611ed29e45aa684325589ec2687eee3dfd2cbd0b783c07b0a2b1f08ab0f
Date: Thu, 07 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754582993
