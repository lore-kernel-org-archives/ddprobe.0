Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70142560
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B83C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661502052;
	bh=va8nSaFkU3gV2YWRy4Gc/FZ7UV1Z499p0LMZzWULvyQ=;
	h=To:Subject:From:Date:From;
	b=S7500eiSxv8ESFqlBligBok2+jeW1KReTadWoz61DObV8bSK/d6vlmWJnvFWKekPq
	 Vaw1/JmzdeOTvTXtKxMWYMT+YfSodM6vn//Q9zkUQzAain8zvSy/qOJ5uWYseTUVuT
	 ChUMGasKZK6r33tuY0JAKFBHYcRaFkDfolBRA1HZYTezWuWruxSuLpAlSDL7JqxCmN
	 psTWorAPIf1coO4pOwAHhGyagksTnwah2tHSuexECBFabQKJrJ6cLM9AzKR4Mg5tKY
	 p9Qbo3vYlCdC9T/b11DNox0NihEFFQ9+mugg3Q94TXCLf3HBUkfO3jcefjcv5WWtYV
	 WjB+LLCOHqjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC4EECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150205236.6551.16145117928444464371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec70dddee7e2c1d6f13b4bb710c3305b05a87b0a2a35882efef3900e2ba8b34
Date: Fri, 26 Aug 2022 08:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661502052
