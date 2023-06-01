Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631792414E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECBCC433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685658365;
	bh=Wvb8rFwIg2xwHhw13EIozx+o4IO0PWstlOzaNKbP+5c=;
	h=To:Subject:From:Date:From;
	b=snPSiMtrzQzbWhe5D8Dp5Vo+3yNjjb4tzgefTwOs1WLcLuHjjqiD9vGKtgI2+B+NU
	 qkCrkCylxi/xvYT+sFGACWKYseTZyEryTjoC3hUZnJChV6KHUxyd5Yc++37Vst+iEa
	 hC2C51FAwl42jaGRckHG06+gNQnwYayvtFHEmPkbimLmN5/rJuvatH4slO1CuOlERR
	 6eqc79ve2x2vUMgBJOKyPxbhP6xGEZ7sBZmlIhQ1swYmzC5DeAf6E4E908K9xCdOqE
	 +erHp1SgNy4+YiD+VPtS+ZRtftf6wOovht5sA7jHj4dZ7LJ736h2NExS6PI/+SwTC5
	 69WZoYVk/G2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5F9C77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168565836576.4140.16211740115227980978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a360aec809af74cde465d596d15aee7c5d1698906adc2af01a76e438497f97b
Date: Thu, 01 Jun 2023 22:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685658365
