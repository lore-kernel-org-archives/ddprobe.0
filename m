Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17E8110D
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684D1C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662114053;
	bh=We6laDY3yWQBNt4U8zvy2yH866Ai5YaTyo+GZPihpWs=;
	h=To:Subject:From:Date:From;
	b=UZJB6sV+S5mspyFd5296IFpP6vsawHmwmsOuUsaADELsDW/mpW/y7M8jvwPxlkGKq
	 zUNe/hulJscUyLyTRox8hXaSJLN7Cpe9IxnmjWaQLd3QJMbbiDDFcXAtl4AE/2tC/w
	 ZxCAxUhaCfGsuN73Vak2enA/MWoJ0ukDqEIwp9bU0o0DRW0us/fTzdS14wVcxcSkJS
	 wOAnR2CRUGBXAjUWZfehx3TFLrSbnUze0kPKZd5yjJxxCubJKeSBZEanOSpNO8g10+
	 xawrGdPZtsKoMvqIPeAKmbYIje/anMdpWAIOOc2x0TyyS/4mTjtVyvN3zW27DGzWyO
	 6x3EK3I5CKzfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5042CC38145
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211405332.3609.13286878301768274220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d6f22e6fee68933b4d908d1fdb46f9034f555e06c19eb02be38a542ff2864a
Date: Fri, 02 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662114053
