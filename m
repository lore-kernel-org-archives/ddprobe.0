Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1A010E3
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B01C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676111045;
	bh=+Ro214RVf2t+sKLk1ouv8YPzMYI8QeKMAGpOb8uehf8=;
	h=To:Subject:From:Date:From;
	b=g1b139f6J8ej+tASi8hGlHG6VCB3vRXlHQ8BPm1lk8Gup0Di4C7pQ+ljqyZpSAAon
	 3dNjYLHd9I7pD6KOglIZor91w7hGjHCxMwn8B6CTaughGRrB4ieZlFoy9HX5w0BAnZ
	 s2NRat7GngBRZqiddN8fLYjc1rVkMtV9azbmJ8lyrVzEVRjTmp0SzvPxRsGenYaW9h
	 tK1Z8cEfX0ok87E7RuXug7KVUox/Am60SNfVsI+5DHvHE/yzvkVMBG+LvZ/LNiUtS9
	 D+gepkZIUyEWehNp5sBaqF/CDs8+8izTzzv5a80BJYMrcDC4gBfrzEvsTS1CCUrDxb
	 vznAHYpeD9HAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A6FC636CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 10:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167611104573.32210.5462221535710875602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebd4fd3a57ed1c2e6ef22eb32e57f565572ad3b625a7d4ba285990d5350e766
Date: Sat, 11 Feb 2023 10:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676111045
