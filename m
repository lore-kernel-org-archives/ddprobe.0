Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C162F23
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9085CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671306687;
	bh=mbJ/HvKv+UI144AK+dLFNFymaf6RNqk3iYcnqzgPiuA=;
	h=To:Subject:From:Date:From;
	b=uG8H9LUzMpEFNj2jZJECmG3XeA+S24EytOi/FBb1FLLEcByeDQC4dD2BjgPizor/T
	 EdTyIRI6fVeubSQDIH6uirHQPQOWy3u1L4Azzd2lCDZuuM5M1kcy7GwWHXWfODTjJJ
	 4h2cy7p3NpLokQ01HIyEoAgV7y6n1Hjt8hFWpNChH/ClDay7GgTBDnNOV5dmQSItjL
	 CDVvYWY9+I8XOuKoeG1CaQqpGapF+YsSTvpgwDIZbGmtLouowrDUt0Hjy5AmsFoySJ
	 5RQnsnj+EY2CZ7Y250wp+gO7k9zcX5mbddKOkRKn/DqewLzzlFeEafgI1a38GThTNM
	 DBfgl6B+Viq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 738B2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130668743.4147.11873115308533511759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34052dcf03e650c5eaf5bbaf9fe0cce5b8341c826c0649a9bec26d7984bc9f3
Date: Sat, 17 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671306687
