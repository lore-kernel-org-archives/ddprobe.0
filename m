Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C465D302
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRW4Xkc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89520C433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700207296;
	bh=c3FBnVWj0N8Aza8M04d0wabfFe4uI63euiqIeLnXfXU=;
	h=To:Subject:From:Date:From;
	b=bRW4Xkc4S3FOLRQZD6Iwf4ftgAi2A2/4Ss+I3tFm648QOtO7EIjtgLu/vsXmTKpSj
	 OM8/RXxwRSa3Z37mLkWFFJ+y9PpXiM78yMvHG0YsL+ZbEeGK1burNFYzDMLlR9RZvD
	 exv9nmUXBjsC5wuSNGWFdaq6auDKNNY76kK/fLnRLIdcioHywfA7FYI293t1O1QP63
	 ozv4ZFKgwkoZQHqeudIR9eWVxuNqI69QggphD2N88KIHuZzkoqQ47/4wnYGEBkXIR9
	 G6No5OTKzk/N6J4B4XYSteqY5zlZ7EmgNSV4UGFc6zLmmgyBvJhpXXvVK32JEmAQHl
	 7/9pmbAhhErkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680DAC072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170020729641.3694.9710927381565394609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570e26dfcbba83c2a7642a762a956705fe6b3fe95747090f6dc8a466b81ac5bd
Date: Fri, 17 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700207296
