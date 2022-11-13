Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99A410F7
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D22C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668330054;
	bh=rZy0av3190yhBb76UInhWJFJjsqdP73cpDUj13Q4o4s=;
	h=To:Subject:From:Date:From;
	b=hP6UJGAUWELXmC/3reUO3yE+M8ITqbUYPjh7g6zrTbkhwoZJY2b4H98spiqOBcSwz
	 QMelZsGmJrzThQv7+Q4zWyNwQePpAvJaQkulspHq6dtE7uzaauIVsRpFCYx92iz0cj
	 8Ditjp/QoJ1CyRB14Wtg/yF5gtzXQUDET0Ee6r5DKFRCAi3nip2vhfSINJqe5cm9Na
	 dWxLGrOIms8oM1glhRmxCdQpxCWHTFl7LfDZgyO3AYsSE4WQ5oYFu2yo2Ff+lRpigP
	 P8cDlzKs5O8CVhu0iVOXloZcjE1+0oaV30ll30krQ0bHDuo5sUFPcwjq/smcIJ2jI9
	 VI58Mq1GAi/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69655C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833005439.9994.6482075927441450041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa0d403d8c74b59cf6b34c994e5be5792bb066cd2ff18c6a00dc5494f22634a
Date: Sun, 13 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668330054
