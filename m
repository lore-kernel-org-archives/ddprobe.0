Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B159564C
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 683E3C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661928653;
	bh=6j6bw6I2DP6GuVA2ZmFNml85IyECGdrsEWPNk+omFGA=;
	h=To:Subject:From:Date:From;
	b=fcz5ITR0I3RnlkezUMkJHk13BqFut0Jsj8V329+QiYGPVA6yDS00ygS8KOKquebk7
	 4mCLHzRy1/axAUSqYxi1xZNuV0mcTqeLry7cS4wem50sE5L2Hx7HyeuJ0aKUkMIx+s
	 E/QxwZhmRNJQM3P+nxIgQlQpK6RQlilcjEk03zO0jRhqMtIPtOjYO78d4B4lPrhVy0
	 3M+vVmbYXsNGlkGv5BHMURX16jnKr86fZ4A8jdsnR9G2frKWAZ2utyFx21XQQZKbQa
	 ivhRNjM20u/UuY7BtPRblcSAIhpTu7FCTGwN5lKNP+/KEpL3YOZi75So+ykpFKEnNt
	 3myE1wsmc58KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD1BECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192865332.3494.4245855336704351359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2b601404365a849088615fff4e59713ab65e42089d2942084272ae18cd003e
Date: Wed, 31 Aug 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661928653
