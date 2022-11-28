Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42518F5D
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A2FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669651854;
	bh=LgoX+DFIPRxccxTpBm8QMZINuQ/ZyNjH136+/lXxJUM=;
	h=To:Subject:From:Date:From;
	b=HMA8jdRTWdjKHES1kP6sNIv9MAGsi1/lQV4eujaU2bNYx6hoQqgZyFheq8Jl+JNNX
	 bEvfY9sESn2bJ2NdXfz+twCs5aJJBdLpGoZBmKzfXODv3b+u/UaFgNt549eAPXPlmB
	 orKmu2Er4gjZuLsdKGas0Jc11cetqRdKxOsreKebP/yy6MQjoD0YK9t7716QFaG17e
	 jcy9UvdeYBf8dl0qQniyz8vIuaKcB+/FkMSWEbBolbOVci29rqXoHP/ZmZCZojxXAN
	 iMq+eb9+0ycZ7j38Q8zrkjdejRUENNBcXVeYhAwOyUf6DAMWaw+7UZxyePIR10JHNr
	 5+4QvXPgEoYmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF97C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965185436.32520.898922223656348830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e70e6e07edd0f59311410538fa864c19da998619b80ce321ce8e9c4973adf9
Date: Mon, 28 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669651854
