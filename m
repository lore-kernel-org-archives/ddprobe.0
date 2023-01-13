Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019AB36C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC7EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673571087;
	bh=HFLD0Er/l7B8vgkvdXvjHJy75nHQ86Ea+0Y32xQBdXc=;
	h=To:Subject:From:Date:From;
	b=WwNIt42BaxeErZvv9+XLQhLH1eW9tt5bjFD3wagZkNOXoZnCS/iPDfuGuNe91moCS
	 dVyooR099TaFpajBrC3Z1wN8e6w2nmzbrLh7pkQfiJP6LyjXprnOe1z/sbAnlZIqAj
	 w5bQhUHCHCECqLAd7Ty+bDhkTEy2ADz5SPWUqvjIOTJI24AeSy3HuWH/oJbY74zOn7
	 R7UiPaURWc37T5R/R+2uGxIfggE8Y7wURYnrVNrSOikyNcjpo+uEtqXNiXToGxuJz3
	 bZsDK6eraBbc31pkum7u8J0mkxgXyyLn/gOEi0KHi8kjmILhVYH0hl1BGHhC3VuUB/
	 K7DSj3Lh0lmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80502C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357108741.7209.11684688658702503685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db4d217cc352e52e57b644a404aec81c29ba61fca86045a473fe610f75bcff6
Date: Fri, 13 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673571087
