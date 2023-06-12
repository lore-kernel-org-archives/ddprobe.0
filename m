Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74051804
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAEFBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686573186;
	bh=gmaYcc9Rfa8XU088n4Z4oTkv5HukMmhueqppPbuam+c=;
	h=To:Subject:From:Date:From;
	b=YOqxbO/1BYItAgwVXBgNKYnAuxAj3ZuyqYhb14WN9kJUFngmluj15IH4qWJk/yEk4
	 3RT4plDDYQrkKSuZBC2lDSFY2do+VxHVWTOHhSCpNdF00XCdcrifVk/C+6FOvXvDtT
	 uGCWOWwDrtgd3Fw0UNpMjSbB8+O3udT8hiHDjxNJpbvZDB1HfDbXp6hYWt9le9nVl+
	 npZ944I1ww5zZEmy8Ga2x/t3VYrxofoxXgGhgjC7Lmi2MYpr5n47N1J46J5WON1EP+
	 AA7oqyPGMYkZH1smA8VRfVBp+R+TZO6LFqCuLLJIjJiIDD8+MOXRIfa/u9nQHjElvT
	 d7RIuCiERyNkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7194C7EE43
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168657318579.10492.8114514960441730734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4db32d9fa49dac8c9559aca1b3795be8e9007486e76b106ea910469242cb4cc
Date: Mon, 12 Jun 2023 12:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686573185
