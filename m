Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326E411732
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyOlLbW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8285FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701514696;
	bh=z5/A/OnQkwciiZgRlKXVyJe4e45VNy2v70PINlx0DsE=;
	h=To:Subject:From:Date:From;
	b=RyOlLbW5UsHuTqDrUYluG7R4U/Gizfi6Di/OLk3QtEsc8fMhf2bfgUyeTfdyCk0bE
	 1jxzZp5LO1I8oC3nAPn8k52WfQIwCNTZ+6zhRJdMdKAVbj/x1w2YE90U8j37QDhJXl
	 /bo2mzlQVfrqONtAEX/0ww9jbuCYwDhFUeApe7KV/IOD5oA5c//IQvX1atAoh9CHh1
	 pMlD9KB0UdOu8Cz3J18Vk5qmuP0B9SUVpGFaECTg/6yL1X1GK1o8VLh6VdNAynBX2x
	 2FcevK5cXStTzBBFLcIUiNFiDiTkx1n62ws7b5TR7DkqG+7Djw6AOO+2NOx4DUzczQ
	 21976OfAUoVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656E4C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170151469639.17706.15649733762679657606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dcaace2e83968f61ba25ee67f128e20818ad037f8c3f459709f4696a086f6fc
Date: Sat, 02 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701514696
