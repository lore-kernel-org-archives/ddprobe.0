Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDA61382
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 01:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUrJ6eUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BDBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697592428;
	bh=umrmE+LwxbLhsPMKaM1n1vcmvm17gBFPR/pJn2Zss8A=;
	h=To:Subject:From:Date:From;
	b=bUrJ6eUCGqqZtb5tuqRb3ILtrEZE4nwEIRSJZT5nmD5MDVJPqkxnyU/9I4EdfkSaU
	 Na5+5x5P7kSKcGIA3a0xN93Iaw7/nJVU7OKMruGdkq1D6k+5jcos5DKQECHE2m0WrK
	 2MFk3FIyCW486LLmE4CFQoqkkkrZ0ShJvJivUCfDKfQ3kfBnS2wpTqc5bB6FMz9Dhw
	 E7knLmyM9gEWZ9JW9S0nreDsJQOIElifcIXHvU+Hi4hUUl6Izcw9e/yRim3ife042T
	 7PILfSbU0W5Uc2GBylE5Ght+zDS6oLWcVw1bLrvM8jHNnsWBnXgoiT60FY08SJDeCD
	 Owc0NYr9CjA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAFECDB474
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169759242869.11088.1309704933900180875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5308f64b2a44543c6f57907ea3dad1eefa07f103793345d110223ccf92f6653e
Date: Wed, 18 Oct 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697592428
