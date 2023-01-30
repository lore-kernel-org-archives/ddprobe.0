Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484A7376
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E562CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675049585;
	bh=bl4fEIHdnSK7mkFrtrTmJ9aivTV7YFoERmNbzfYWLOs=;
	h=To:Subject:From:Date:From;
	b=CRTLyRfLYjg7p/DhcpsLpoa45pyxwpvbRKTQua3VKPpjwdaS7P7vufC40otKCFn9k
	 otfp8m0tZiP9nKGkfZ9Dp0MkAvsXk1lNZOJRmeGScfTmUF5/Lr3GsaCX+MB4i0B7ss
	 TglENVxumIQB1oU3yQJS8HtIOZ3PXa9zIZGuuvBWD3k6Hco67yHrDqsJ4VB+dhlUv8
	 SQzmhxIPcYGqcEQccuidJkWXYZ4VmGvf9JDDmncs2EFr6Nomw2FGfLn6cZtw1hDu+N
	 hSOu15kzaoWxh7AdqtLh4NCIEXjW9R+xmbXY5MCU6CNP+EpfoGFbTSAE94HI1YPRnb
	 mZUpJjxdOHa7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9293C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167504958578.28514.7992742014032186418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4427abd9ab8395af4eadd4b854df34f6c60611d8ce8b39b00e525c9f99a958
Date: Mon, 30 Jan 2023 03:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675049585
