Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072D918C0E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 15:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B13C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 15:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689866528;
	bh=1tdHZ+80X4JjOFY4M1/aNZW0MWuEvgT8MGit/fWvjNY=;
	h=To:Subject:From:Date:From;
	b=aMMS9AyeWyiu8PsVkRNGIUauMYWLZi31/ssfdauroydK2dGR06Qh0Uis4ENBBSvks
	 NC8B+55CMDl4/+ZBb9bfWEcrTyxC8gIE9uU3U/wVd78zFc0OtYZyMvCSlJEAky7uQu
	 GVGOR9kFP/ycqbWFlSr/a1fSvNs1MEP3YGZqaEK1HJO7OovGPYsEjLdKliD0rctmIH
	 tdKc1dq2xQfdR2KPPFYLWuABoPc8Sc/Y324T01R4E+dKHwe9xKmYEnOtT6TK/ZJNXn
	 hlhcL0GyGZ4BxcYM4U+dO8GlETY0mUCoyWDiEBVs9ts+UmRiRX5LP+7HCAB8xlOORS
	 YNlY7B+aGh2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC464EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 15:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168986652869.10006.16917218276146995968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a838ed0625a974cb6d214014b63dec6f19295d3f5c62a55c86698f254c278ec5
Date: Thu, 20 Jul 2023 15:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689866528
