Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2183133BBD4
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771436094; cv=none; b=TVVAjTyLiUAPmzgj9yqjSDY8PI4iYB/e9aS+NNBPSByDMY4SZ3PCIUBcmllOARiC57WitdK3vnJc6JeHB0U3qI3p4bcWn2DbnwoBsO9jD22wSR6F3IGYJ2v8F6PUSqKVHkH6zVLyv/DOTM6kBULIo6n0nS7HYxDY55MElBzRZUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771436094; c=relaxed/simple;
	bh=aYCRWC+U0q5wLtnlKGxv/8xazQM3qw1oP7VhWh8fEpg=;
	h=To:Subject:From:Message-Id:Date; b=Gqjbwbx14D1WFLFe0diW95uAjeNTX1Koz5eSeeM2qp6LqsLvffFEPlkLRUMKEh/QvzYgtwwDZpDHQCTBsCIwjf8KkdND0FfQtK+mVnTGJxJtzVyimuUnp5a+Nxsvq3rdfGQ5AMQHW4hQMdRJn7E66bwxBPh+p5MY52BcyWhqKDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6wlHpbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6wlHpbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF446C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771436093;
	bh=aYCRWC+U0q5wLtnlKGxv/8xazQM3qw1oP7VhWh8fEpg=;
	h=To:Subject:From:Date:From;
	b=A6wlHpbSQGZL7kowlXLrO/EstjvYR3o/vbQyd+GMXUURvykExKuMKKH6EPYjp3CEX
	 lvpC+NXagbf0XC81nBT9N5El5PMMSLFKnVM1qAGCAQUw9QvHPpcdnnBhmL2HN9Ilfr
	 b4IoTMKp2mNS33MHRmT/REjXYVFn9OACrYsfVJ818BThn70d9UQWYm+x0WQXGi6R8f
	 vJQxhFb6eqaePodjz8/Nb8Gw3tpfXtHoI5nUbPcxTiBtwtgLAAT2TY/Y/ddnY+PxqG
	 OIoUppLr2mqXcXL1e/xQUKx7bn7JoCUXIeWCV5IK2LHAXV7BGWw7WAu9kiYvbvrd+A
	 yjoXUXKn3r/fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C6FE9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143609361.13407.13755839345373838279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f686628003595c2031f64fdaafa6fc96040bacccb92cb9ab491a007840d76a
Date: Wed, 18 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771436093
