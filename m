Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE00DA3C
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75856C433D7
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665906653;
	bh=hg25uFfcehlqUKKlI9MdhMgys51WlvrfzLw7aGsCpco=;
	h=To:Subject:From:Date:From;
	b=kCAoBsSPOQaKbUF9smjmTGCrMYZcE5mtW1KB0TYZyCLybnQRbWSLeKRwqvMaXjPUr
	 qf3Vm//ygXMQjEbMVBoIzasPtUWGNF6KmJ+TWa47nxtYLHgIAKhUJnkuHZCrmQYz8S
	 L9e4WKcIPsgg6hWyUWxn85xkizj0H/Bzh7ZXBNv277x1GfTIVpAa1rW5kmhQIjpnRE
	 tsgkjj50OCFGAfy+99aKG07J70DBlmIOIfcOF1pQubxaNsImijzBhyeS25F6lRRWXj
	 aLp9AvBQ+c9E6dmxLqDysBwh6KwrJkqM/kntUlWGhUpswDjiBrOK4Mdz1KtldKofM8
	 CfBALyjvBUyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56485C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590665333.11397.16743523512827018217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7f60baa4d9164a1d847725f78b83e66e4a999e7db2476ec1f6f8e8f7fa7aae
Date: Sun, 16 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665906653
