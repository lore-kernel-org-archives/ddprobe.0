Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED8518D
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79102C433D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664928653;
	bh=YN4P2XX9/CBpqg46JlOuXt4buLGHiwlxAFU4P+ndSKM=;
	h=To:Subject:From:Date:From;
	b=bOpGyL0rQIgh8oY27hLfXTaExSjojIZv0dYewE1JI2z5NZbMEC3tdeFIve2cai/nc
	 zI+wNn2dimypB9oYGW4O4RMlNX91G9XAm46gGakoK17IOmWwaY+kMyGxqz+tZK/CA1
	 44BooBWTzG9rgK/Z8YlRKC7NG+Kdw8U15owKSRiUYmsefFrjCvgDYxTj9FTPzmKsS/
	 LFbdVx196owEiwnUioiGlKjjwfA/ITP+p1N/yW/sQSygT0fNqVbTEIO+8fv10fq3vY
	 uCjyeU8tDpSEE5nKEwuqaCJla4oXZwt/sVp3/9VVQ46TwA0Ydc5BPEIrZ69a7tSgHm
	 w4oCWhUla0Nnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CAC9C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492865337.4300.2578060780376807038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6324617619d29d50e920485103d2e5392e0940a02239a67ca8f2b0f27ec9015
Date: Wed, 05 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664928653
