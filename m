Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAC35CBA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF98BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674922385;
	bh=9kaR5BwK2rLgOrKjtnlBC8PCCaD3P6B7pR7wvtb5ask=;
	h=To:Subject:From:Date:From;
	b=J5dTA748LTiJdOfSQYYcKa9K7e7l9ke6L6zNLEagYeg/5AuARpj9FEDVjBDvrInFK
	 ZauccQHxinp/XvBcbXH8MUsmFllwOhZOl9mVse1kNDK4hOjzGIXcm/Gu2zwgs3RCru
	 CwXXFKNToiSl0FJ01WDDQlQ+f4SFzWVWqpW2pOT5IYzL0FZAtrJk9RjaBA2O3a/9hO
	 QqtLrKQYCHmbUpdb6SIn4XGYaP9HXc8s42dQYYW6HrW85c3VsFZf/Q0smnyvFCKaiJ
	 ykWY1alJTsMY54m9CyHYOtxlgg0nXH/7ZzKH6nQ+gWY9Cjk5p67ZSuCWFERh62SdFu
	 oNp+MAieWB+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F83C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492238575.3769.768972014946356611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749f2c0443844cbc22db5f3b5437a18af2049e6d1a130da60ff6b4cbec769d6c
Date: Sat, 28 Jan 2023 16:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674922385
