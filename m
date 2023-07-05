Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E225134A7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 18:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B51C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 18:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688581628;
	bh=azdk4N0sjRgRE3/dWmEfLjSpE5beh78q0DruJPuDlKY=;
	h=To:Subject:From:Date:From;
	b=eiXuwFwNPABYOCSgGRyX/zvqkJ3OemSGP8aGI1NXNUhqHe4pI903SUaNPHOeTe3OH
	 PglWvowpyq1vrm52vl0fiHqpSa5XGGaKcQGe0dABlU6te1paLXSqYC49YlTDJJ9NtA
	 zuvuscgBOAKyxzPrl5HinKqf/Nd5HThhBzP3+5UwTBNzROZzTfNvD3G0huWTbH13Q7
	 tiatSjWcq75ExgzmnhkOVSy6a/sv0Z91YM6meB7uiAXDnJj15Q31Yu2PW2yoDfV2Mj
	 8h5Y5nvd7hN8EiXjZZjZh8H5qmJuMrHHMTOhPbctStz9TKxRbvzZKjTxDrsuEnYgPB
	 Uaq8C0EcWNgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ABAEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 18:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858162866.6015.11818129333523700772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522a2c86d037ec9bfc50ab825818f0cdd9751cb62465e1a494163defe44d81f8
Date: Wed, 05 Jul 2023 18:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688581628
