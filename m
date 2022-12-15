Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D43360
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D0C2C43398
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671087087;
	bh=6iiCJaA4rnrJZNXbzSXePnEvQMsUZ+G6dqyxvXqRda8=;
	h=To:Subject:From:Date:From;
	b=GBLf8CqQQXmOaYUUaMo7eC2uhFkr08/kEDKyi4tzyU4fEFiTwbNWd3QxFVOnEh0pd
	 feAnVr85wCS8O++0ncvMYm73pJZZZ8EQ/Yag+crxePPhCYPpDNg1ld/K90Lkmp5V3r
	 8oLV6mExwVOzdew2EOu81jWdVe1W3QYTr3EhZ2uc8YQQuiDte1XSyOgj8sNKQ5CLDz
	 KtW/GdyRPZOELu8dq66a6vAIlmExCl3NbCNODX+vIY1EpBIuz8uSVZcHD8fspjqohW
	 NINzmYAhbH16RMGM+lEDPNiUQovA9AyrDCOWb5muG8TpRRxYuNq7rhkNWRvPg5Wzwk
	 i0y0HEwZPf3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634FCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108708739.4895.3662814828524467537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bf483d0e55fe7287cd3dc5ac7119b92de5d3dc3559bef95fc84894bd45ff89
Date: Thu, 15 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671087087
