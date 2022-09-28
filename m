Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23A35381
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6561EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664403053;
	bh=RszbQiHszTTB/Ja4rdecxB6iG3DJxeo/zSPmVZ7fIMo=;
	h=To:Subject:From:Date:From;
	b=ezpcps4HukDLgZa+JCScJFKlUIY4b/hLL+7nteqP0/DQ6bdlskUzrg1EqBT4Z+1U9
	 NNWOh6mX/I9unC4YKcXrtc1SVYr6GgQcqrwlQQayNlfeBa3403ifSuM0xYGmL88RLE
	 2UPnRx1Mx05WMRHT6PYkMCun7FmEJuj1p+Yjq9D0MICrOGzfQPNMow5HowFyxERXlr
	 Bdbh4Vb6WWuxNjwtgdU09Erx19UxF35V9mjpialkgv4DWACeLIqywzlRmfOZhhxqDo
	 YThxLMl74l4ULfNCTWQmWgVnZIRlXNdKsDniifNhfA1nWcpzi/QxEYT1njMQh5hITd
	 i9KRXZeWeRR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7CFC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166440305331.10659.13196396644155459230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da85ff858b2c68ee6cc4d022bc0bdf3cc0dc872fb6d41cbc11c7b8a97a5ff1a7
Date: Wed, 28 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664403053
