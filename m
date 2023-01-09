Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BB633D6
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC34C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673280687;
	bh=1z23JFf0vmUP6d1GGWwU6ILJvzyIukg2TSzQMs/0Efo=;
	h=To:Subject:From:Date:From;
	b=Gs9sRmuhGk8mpBWlz+GUwZLCGENur6a3qO9RUY2YAmCwv7IRc88QY4f62U8hL0n9H
	 jwQpyKzJ+GYyoNeI/LnZeWbbIe1z8eU3L7OumLna+chNeSVPZ0DkNpW5Nk5+8toIzj
	 6SUJys4ER3FNzEUI4Ccdp1/gm5VP22oSumh77L67QQWfcC8vKCcbUQqTRUQHxXnom7
	 wzzlzHdc8pNw5xqVvJX2maYQQEa3fa413f3hzbvbobTkCeFoF5gMMOnP0rk/q5UXPZ
	 WpfGKcPev4Y4fOM/y3hFbAEKMDaDN8ciKWFZI2FkHhE2m765nHPHGIs1A3IlhnSmsd
	 EphwmpKgwoEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6249BC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328068739.21618.13280841562169526271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c727ada126b388f2c5b2622812e643561390c1cfe1c45427d06ed045a76b153
Date: Mon, 09 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673280687
