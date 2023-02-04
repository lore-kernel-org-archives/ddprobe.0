Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4544B23A9
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E114DC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 14:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675519565;
	bh=QTpdCC01gu+NivyY1DIydGKFxeVL/WzmmEURfzy0G8o=;
	h=To:Subject:From:Date:From;
	b=cVgYO+CbJOfkF6pd0Q2Ttpj6D9BAYCRbXs6SjwzrMnwq1tPJ5nOfabfnjuWO1F0ny
	 8rrDbZrDzYtQQFQuH2AVtrk980rtOROcIGXOAa2+jrhH0lGh0aBYppTKvd/CT24IWC
	 XFOXH09yMLLgtzW8a/kYjn5Eshch5JrzTNNayQ3Sr7h6Nnk1mRaqJffVqHPyHljOke
	 A4bAnZJ7Trmp2dnGsPWrcxW7r6L1caMYbWJ3+FeF0JO5XKQiod5exGnpLDWuxIm0IG
	 Pgs4wZr2Ole8eiEL+K9Bgy0z2LZg0cHdatRhHthDTLgR1lUohx9/UIax1NtISISoyG
	 C4Cn+T+zVf4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C16C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 14:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167551956578.4445.15720971229069154886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e6d7b0d3775432a738c61af7977028ed1562cb9fd237ebc4b8a1fef1c73093
Date: Sat, 04 Feb 2023 14:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675519565
