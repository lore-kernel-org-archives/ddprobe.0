Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E22813FD72
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735669554; cv=none; b=Pe6k1WlONT9kS1SM4Sklk5Tn98YI6dqsEawGKVyunkI8pQQ1EP0nEP6MjAJ5LB6RFNADOyS9XeV7kcX7eDjYZQXPXVzKZq0ZbHPlkihqI6YhvBVtf4DCagbSZnM/w5/cEmz7NLp64S6lvcn9yP/QgUP4rjbSwmuXkCIfEfa4H/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735669554; c=relaxed/simple;
	bh=l6PhHrsJ8K8/zQWO2tmiSUHOAq2rJXzEUZsxgy0h22M=;
	h=To:Subject:From:Message-Id:Date; b=Ta0Fm6OenFXTNjsf1U4PSOqssLlGje8X//m9MsXQcStV1b8UbunGRBnxk96sTmQPPYtIoXRpPj1CRKKU/tF/K6bcgjORcNjBnKJD38gbwwXsGwLLGw2wRb093m6s3YBRlyrcnqZtczWbSaws0USoOgG6fV4a15xAlz7FvJqqFZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqCusE1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqCusE1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BADC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735669553;
	bh=l6PhHrsJ8K8/zQWO2tmiSUHOAq2rJXzEUZsxgy0h22M=;
	h=To:Subject:From:Date:From;
	b=XqCusE1+68bQIUmCYmDDckjNH0NkAf4+PM/DukqIoVKPmmUrD0rFaD97KYzGoku7t
	 886XgqPEmZ2p4N2Qen/7C0gRUJRb9JMLV0UkNu/7FFYtXfdMzVD16/9Taw/xAJEvaQ
	 159cwZfaAjEg2VJlnjxq/s6PXaBqX71rF7Os3T3NvEZ3JaxF0gWLCUqai2XB5/9WEL
	 KJv1yB1Jv2cF8+x9F31mB+cCcyc24b/zdzia9XyUG1tnBUui1+dm9FHUZQ48o36IH4
	 E7IXnm177J10l7eA1PoxrXe/WQ2s+YZCeG2RqOWj9rOC8JxQdH051dhtv4cWTEsyI2
	 qD4+L7y2Mfyag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96121E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173566955359.20763.6080921940803728062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919b54e4c4b0b65871e2ca4f304b9eef0f4dbfab6958cffea1bed86976c745fd
Date: Tue, 31 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735669553
