Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE01F364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727DAC433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666488053;
	bh=SkRpnioK8ohflAsF34IcXkWrMdw5OasurK0Y6V+Jgis=;
	h=To:Subject:From:Date:From;
	b=YmSgMNhnkUL+BcF+l3kbC0PQ0tWqscowrKnNDKH+sK181TaD9gbd/XBiSUk5XcYIr
	 t9NYjCpI63zZqsrbTptWkI5qNm2kZXn4A4Ru4OvZ6T5VW1rSQzMIJLvfJtXzqP2E/p
	 wcLIEDhmKUm4MDgPoLdOlORwzuW7xQqyt94ef8KqtqUNAmqQCVNnpVmVeoYpy893Bw
	 l6VXuWRQoxtBlbgVzBHV5QkOGVNisuYGtvwiQ2mMrSSyCqd36ZvRPO1LRb16YmsCHK
	 KZ0h3JpdUMhtWgfelGR0uqAB2KIBpYFhIWM6KgzA968dsjaTnlvzPjqayLqJATAaG/
	 nWpmxkvVvYzMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58523C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648805332.2036.14069756388058986329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c66a59174c5c90009d4f09a5f79783b9b997d5df3168f46f4aafa358a00a6fe
Date: Sun, 23 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666488053
