Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37883EA6B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWIGLd8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA99C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704874696;
	bh=fRMlgN3KATUIqgLWdVatHGIX9vrTliaPbsIC+ZFGAs4=;
	h=To:Subject:From:Date:From;
	b=GWIGLd8pj3t+5JCnbyO/YItJ5jDWh78k6mrHdgg1njv0jTPdDT4uCFjzjVRKlSVSj
	 mFDlKQubf8AtQ3E0iFtZ2EzMaQ31K66EX3pLDed7cC9tbJ6IzXHB7YktNQHuzq4O7g
	 JQ5aXzlheMj+zjbqW9pfwMfihrfDX4J0ij/Mydyt9BQn1i2Jveoy7kwnNQkUWzbBNd
	 oRVukRBJyaawfaue5U1ExaJzeGWeHwr1gxtvUMSRqmvNaucgsRU1i9NLqf1QH1ycFL
	 +kHT7nJ/AzOf2N5ra4y1sArn90n6Zsqv2DsxWAdAP4xW9GRKOeE426pWZwtjEXwOCE
	 mVSq+RuV2endA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDE8C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170487469644.17690.11491083562808984063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75614e9c342c7b52699b9705eddbbd6e6c22dd6f35a27b93e5e5937d791d861
Date: Wed, 10 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704874696
