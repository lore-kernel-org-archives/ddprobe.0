Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8098EA8
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8289DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671468087;
	bh=beP0pyXDFDAtbjUGnh67UYbzHfIOcBTy25CCsmmaBYg=;
	h=To:Subject:From:Date:From;
	b=kfEwPJOivRr4pFgiUX5YSiUXwZsYvyAXJrpfNf8fGEBKupduX7eqozl4UhVbVdTfA
	 Nk9N4td1koHWYVXjVOfBMJvEldB3nHvHWYljRS5kz2OQAS/LPhd9I7VEqTPjOHAiLU
	 tPmiKHVF8rgIXMNM18Q9jM10CteNUv3iDVjJqLdUhUfzr9ZTYhS7DIeZD4OS8ODEoq
	 jpgCn/sq6o85rdc7Iv/JCuAFLJMkyuRDlL4cD6JQVQtAynJv4QQ2+8QOu7gc9WyPbM
	 IXQsyNEhdqX+BiFmOU77FUdgDiyK7ktbElc1JEJ4LPrAMRudm4POyIqNSOyzCsX0zc
	 kzBX+KKhG6Q7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE21C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146808743.11917.12604784196803981695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aeddc806d68f6cf0c89909e97c58e9a3013794dc9b704279e00a240df347a80
Date: Mon, 19 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671468087
