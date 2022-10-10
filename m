Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2039185D
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79459C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665378653;
	bh=ZNqYyejZE2n2t9lxm9HXBkw4PPC8BLO0tLMsxx/roFU=;
	h=To:Subject:From:Date:From;
	b=bQ/uvrZp+z+LlWzp0ta7IbPwQaMNe7PcP1bI2MznlAXTyrKuheuUYonruCwjlyGwV
	 4YiqKvu0APazWquhJKWmr9UYsDhLdU6Loy5whziY24pnIVTAS9Fa4lAV6ZKZfEagqd
	 BbzxlEr888g8aBMwH1knZrcI6YfrJOm6OuTyffFle1cZhriQv2mFeFlvuY3ehwcc6k
	 BiHuZjiGMwxX+nYZJoFby4QuInVBuXwtjAfn/KaBe5GYOsCJU18pZoiYufuKYwDoWf
	 JQnkyUemev77RS+pDRB2ORdl0xr6+IBooDsoEN5iJp/nZ8+P1R3lAzzl+zoy6KQTzG
	 X6A+sHcJ0GY5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF05C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537865333.1070.4295345756717244776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2aa4ba4a83b1d2b0327686d3343c9a007cfb3a3b6abd26eb4c181c52e4ba719
Date: Mon, 10 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665378653
