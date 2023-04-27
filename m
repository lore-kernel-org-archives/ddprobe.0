Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B99A2584
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 12:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1045C4339B
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 12:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682597465;
	bh=XLrsLsNjcbg/brwyEhKRQpKgWHNOckuJIHuInTwEvyI=;
	h=To:Subject:From:Date:From;
	b=f2Z4C0AIVDRs2KUty/yN+HumDj1AVbarOcCs9bvCTST29ZbrDBZo+3qxzZ+KxN5dP
	 01wPixrxZ7OieLYeCCxq4ELF7Cs8GX/HI5YpYx2WD64tKUoAoXEF4YmoaUFBa6RnbX
	 YXEz+Oy+ptfSlPBPRrbwyPS3yDMkTs27ucT3Q5mk0qNVzWu4+YVzNfSgtQxzbrX1Zz
	 V1Nj93oHRSY+CCEdZNCU+jSO7ooqCG2FPW6LCOGIWI2JahuzkWK1x/cU1kYYFUq1Yu
	 QKNMHQHPzT9f6nsL3XqZf9rZs4TLb+0I2yKDNtzvMN8UOaLAniy44hUu+tGoDJ7WYY
	 hMgVPOiFc2nqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4489C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 12:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168259746578.7576.14757298952349891735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2e9331568fa5999ea542165376abd1fec7eb9a1e8a9e87552a24e5b999bed8
Date: Thu, 27 Apr 2023 12:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682597465
