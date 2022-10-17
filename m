Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C186A1C12
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAC1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666016453;
	bh=vl1b4wX7wkODmZDy+kQXqqTBJiTAzwe89YEiusETd4E=;
	h=To:Subject:From:Date:From;
	b=lVy7GWsLygrobQnkQsk/a/Ji1clUlycYruLpNJzL5rSWcxH2aqVAmGAQ+GX6pB3f/
	 D+6/Xc7NPvlFRqMLZ8Nc9zsZQb9PoQf359+k4TXSwnNdmJWuGIlFBysr7hDpoUrPoq
	 L9bUBowJtErt4mxwRnhlDEhc2oIQapV5MZzEx39uQvUU5az1gtkwwLda9ZUeiR5Z7l
	 LosUUAJANxYiD+1ksVJx8aIiBXSMwsz8OjWy6adLV+h745oMtpntiJ8J5WGQM3UcbI
	 z63XQ7t6B+i3WWmMAnMtRmVNUN8r7O6pjHcylPhET8Had1Hrwn0gFX9C7oJlmuasFP
	 1o/2djNfiiYaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC96C43217
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166601645331.11144.1031946230493634991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d585265cefb0bc0c4ad901afdfbff4a4d483c1406a5aaf467e8e782e37b1f318
Date: Mon, 17 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666016453
