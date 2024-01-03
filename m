Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4851A5BE
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D14knymc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A7CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704292696;
	bh=kpNAd6DN5fsftmIwwGmW3ojh2HMKEslS2ISv483tV0w=;
	h=To:Subject:From:Date:From;
	b=D14knymcqKb8taeo0ZysVXlX1Rd+Or02WHeY7YvALAeA89aBMMiG6IQADKejVbXs3
	 gezTRsEp3te84E/n38FrJTv5x9IjmFtOBURHgM9DByX2READy3wSQkXaGmV1kT0uYe
	 Xp+9wXYJvtBqi2bOd7I5lNtR5XT1cjuJxZ499rz4dEiQt1WD34RtO/48YYpOfw2OMC
	 laQkFfHNCq3DzMiT31n1nXqJO/6KRm7hLkQOt29FGbU+gLa3CE7p870/QTJu0EbM8f
	 n/ti0LW+Jv05I+cei9SgXrO2PfD7lPnh6TIStIY1YJIzrzgFsAWtDA5pU4xziStuhM
	 0YNdfgeLMzISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6439EC3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170429269640.18339.17937712572469873619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397949e521dac3f3752e9674ce3aa71c5704b0e219ed682bc50b4dfb3d2311c3
Date: Wed, 03 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704292696
