Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91AF7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E68C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666297253;
	bh=e4BbFIenlG8zD9ougEkSinoJy6g2fBKD/eluyFqU91A=;
	h=To:Subject:From:Date:From;
	b=JTl1BqZOlrxsLYnd8TDpaH5EekCWDE9Rd2HKKdffXhtM/7nA8uynrva9GDnXVFVyH
	 VCECMXpNpIkV7j23BWnATDgF9sDTeKjYiDyaET9LXGGx6B/WQgnrXvVCwGrGldCbVg
	 GbNvjiL13Ljdg5s1EZYFuSQIYj63inUre/oUsPGJxnox/8qbJaFjjpi3Om5rAOOuAm
	 YVKYQSHCliQKIs2m1VFcCDP+yf86TsxsEuvqx18hYlfezoiOAUAItRULScRJ/GDNLs
	 QAGlSFM0k2dMGywsztQZwTYKjYUJmjtPhzMGpgtzUOzAJCQdy8+RXz8gI4iYg/inT+
	 rCoSJefznwy9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FAB6C43217
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629725331.30264.2788060058429583409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3593b8d6c404dcae13dd643ef101ddb6fe36f1b8fc2854b0a1c6ad16f603b899
Date: Thu, 20 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666297253
