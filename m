Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D6180C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6A3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665835853;
	bh=wdnLBvC29v8U+QEVg5ZmRvsAI7QGxX019ixPg85upQg=;
	h=To:Subject:From:Date:From;
	b=ROEvpi+nXP587FeC+6sTxegJCN/IagDwr1KWw5G3uKZ7jwCgWkPteMnmWbEcGapCw
	 BuXH8skqYsMXQMZ5bPLJaTEuqCejN8L6CQPsdps0rg3H7fak6EXQqWkTGgxZkUKhGk
	 6R2qoP5GML3bF95L7RSQSdTDIsBGOtWMItaPna/hAwRXRIpY9wKXegDcl5AvvfehRr
	 qgfoubSgu1/Bho+COoTeteNHxV97WKfCn0nr9ych/EUapaQymDSzZ06euEiQ89V/6o
	 q/og+NaNPt0PgdG+C/S2wVIYh5LB/Out7F6R4X+10udf5DGF8cB4xEh/nP4oQNY38m
	 6cq8vV1uUHWEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50931C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583585332.6015.8672018102745451451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92dc6bfc0085b79b84c9dd63c87638659e8d37c5904fe10e3e40a7087eff9ab6
Date: Sat, 15 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665835853
