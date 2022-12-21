Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7831859
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1F2C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671647487;
	bh=iD3m9WmRccnUiar5KyVytYOtWvqj29AUCkY2aC/5duU=;
	h=To:Subject:From:Date:From;
	b=mVQ92z2rXqdMo0+BtdDtb6nexzFZg6WhRS+0xBVAJTtQd2Em1YJbWHctzG0CFmN8j
	 /GHGPXMAQHeD7e7ESC6dsW0mD5L1GiC9q3lQQshYcHkl8w0knhA1FyKXucxpE66nFK
	 5f4gMM35nXpPMn2+tS0KlgIH3Y5Z5YvmKx+yRRKtwyIGDghouM54Lcsu5HhBoW4Ym1
	 lZbtGTtLjm+di9wsL2z9RVOajV1XCVf75EVrDOWHuitfhR01sIGCK8Pk8yimsoixPb
	 uz1FXpghv5AgS3/vJYjwqjQDwehJWos5LPV3AN5OexT5D+00Ax+EN7jw2GMyDREMjn
	 oPCA7EOjj/92Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC13C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164748738.7321.17397114762837613736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a14d1a800e0cc884d1546f1fdc7e85fd877847c4657753f9df4cc5bf5362de3
Date: Wed, 21 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671647487
