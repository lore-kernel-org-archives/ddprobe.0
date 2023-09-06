Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894CB7E
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 04:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59A9C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693974248;
	bh=EQNzJxEwZ5wOEtQGk9//W6Y0vP7R5tVJr4dgmYp+65o=;
	h=To:Subject:From:Date:From;
	b=Kyi5FMogiu3KD13d43GetaZN+KI8psjqG+IJhLwWbT36wC9uJDtcyySo2TMPuo/8q
	 uOJbTLx4FPwemTh6nms8rQ9b39TwE7VIVAjaieWluFRzQKp3PeiHMqJDnD+Y2k906F
	 jcE1AScmzvfaDU3a1k5yLDrz/BI+sUuFC9pbGUg69/Ui1P2kbERiSkrfZqUHMBEU7S
	 fuvfh3uRBIs606hyhswF2XkKThhQ+BuSHC9Ilql6/d8WbBmSd9t4uzshdXtsjOVTbp
	 W8fouR7m9EmyAiw/D8ocHV0oKcmb4YYlrbcXZ9zKV6Vn4BfW2XGLGURrM/4kRSvIzd
	 GzKGHpq96sxBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A75EB8FA5
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 04:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169397424876.9267.11318864762085745619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8c97626fdd8491a90c91accf51b23ecb8cee339e1c647e27ae5d4389f45a65
Date: Wed, 06 Sep 2023 04:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693974248
