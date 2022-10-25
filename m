Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D582F2F
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7115DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666733453;
	bh=AcBiulBsHiz0lpYctmXgnPp7pnoO2x5CsRxKxO/FZIc=;
	h=To:Subject:From:Date:From;
	b=WTUor/Vec70+7k81EnwldSJ1vOCOFtNdxM+TqrG1GJ/LXrTc8n8mMJ6BPlARM+ROM
	 RqlLYFdmADXjIMexGOEPvYXHqVqXAuNdYGnlpi2YIdUxJyCzVbZvzX/bpNB9As+Vsd
	 8ZJZgb/rIKCzMjdapv6cmjM/uacnlMJ2MsDpGxxBSHljOmRO/u0X0ACMdkiSDk2yfz
	 p08O3zX6z8Nc00rYKx7GRZD/4xVDpbdnD2dbyinY4e9GcfnYFfV+vrkF17FPyLExt0
	 UZ/6Iso+Fq8mogwqvnAy3myHOqcrNlqxfB+TXPnUjZpdhLAvwY6koqzAJKZ+q834Fy
	 I6vOGgPNNb2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8BBC38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673345336.6560.6716404642111546581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46af643371980fd717f0ee86ed32091d696e119d0ae08da02f98828d7a560f43
Date: Tue, 25 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666733453
