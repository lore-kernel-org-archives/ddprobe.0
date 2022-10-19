Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72C47E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D294C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666195853;
	bh=vDS/7f0qTwF8bqq36lzLcRLnM2efq1g97blKFuERy/I=;
	h=To:Subject:From:Date:From;
	b=D2mzEwo4oBPI3hRriau5QSKb7AWcBUinxo6v5qdqYAwMxaqc7QjHcrdNKrwIBnw7q
	 KisMRx6yS5qbVgD584NI8HIn0JPF2+NBJSDrtlrjo81TQh1FxET3tZMsj6wAQiW0xd
	 CU/Gcsi2EgWWz3QzGaq5w3QZ8BPgfFcFWtV0GLCNT8KWVxD+4zAMQCssS54aRQVABb
	 6Fe6Z4IGm8TsdnEWf/e9pRujrWMqUVQDiWW5xK1e/S3K81K9tOag2wtgMSLpGr0RKt
	 ap5C79zMyNQDni4mCGJ9qSOc1pL6KaRLH2EhjeKzQ2pXdsSKGk3wyzezuXxqyEeSAG
	 U/C/df7yi4G9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C106C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619585336.4150.1173266733928277870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6417a3ea39dc3809c032478cfd82d2cbba911a09910263c98bfcc700be4579c5
Date: Wed, 19 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666195853
