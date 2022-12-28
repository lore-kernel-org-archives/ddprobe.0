Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAFFA2A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA43C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672192887;
	bh=E9fX74aYVbeIsr4Y+iUhD7HGSzKAknOSaw3hyBpkRUw=;
	h=To:Subject:From:Date:From;
	b=foIZz8UQngpGZsJcto4QwAehjqv9nSOz4/Xf4aiRmTSQpNHLd5lSKPngCkI09WXTP
	 1kNuI5hCQ6yLdLbvNLu7S6PUP5zww7A6CVM/887U+eYhxTc+jIZwn885XV+jcpOU0h
	 0vgq25+AoX6+qWVpxD/AtncdmAX7QY7G/RB0i0mcm9IrGStjdwC+ZoQxhNbySbY+dv
	 bNr1IwFwTfT56+TdvTbCJc31SbDa5Kl7niik5U3m9YKb34YdVCYgSm+oZEyJ5az//k
	 APv+WMQKc7un3EGobf3lOP2LUwSTBLAaN7t5fNUPxE70mtZIqvI5W8cJou20jgc/dV
	 DDk9TrC3xGqFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71634C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167219288745.3012.12620796377429638490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeab3a0a9c07c5d72cbb21d6b6d242ae98b9c6b91cacc99b393d603b6f71719f
Date: Wed, 28 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672192887
