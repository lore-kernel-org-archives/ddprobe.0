Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A822F22
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A31FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666183253;
	bh=hRKYNjkEvr6aY+cC8UlJKvW5td5N+TY3otGrAAzY/LE=;
	h=To:Subject:From:Date:From;
	b=BbQ8SjlGk+AxOClNh03QBbIRbgmTPm3ZgGztetZp4rBr+x+APavrYYUcl4pyDLz8y
	 FUO3PLLC6T3sDvXn9NqKqdLiEcIPb7q8x97USw8VbACRhlWM9YKafrQo8K+KWiRcJo
	 8t/7+HiXXGIJBfkiFz08aPxo9rCmqd3RAQ3P0LWo3+VES+jSC+8Tw9o0vJnbvqazHF
	 0+MxJ9zmBX94xlGVbkumj9sU46s171z3ClNRB5eDpOE5Kd52B6QfWmllZpgvu+ImRl
	 2c/TA8z46vibwFCR4sd96ZU6EmTZojHXkf9OSjrNqZPcEngpvIBa0eEbhmodnrzc15
	 Rv93PE591u+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5485FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166618325333.4762.16160236780282833096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ea623f659683b5b6215c947abfd3e74ab9ec7eff568571bb829a2a3c686395
Date: Wed, 19 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666183253
