Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8887E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAC7C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672625487;
	bh=bWPkS3zy5ydfTPBmRwl6ouW2fk0bMzOppOqpvgM8rSI=;
	h=To:Subject:From:Date:From;
	b=oIaQiNOeGP9ee5200NJKLujSfYVu/M5X5gpJbLPOOlBncY6lQRIo7Uf+bTAgMfO9d
	 UWF2ORj8lDEzpu28W/f1RRwp2mZpugzytDu8r5IPxIBbz68Y0OG/B6wW35bJSbUtWs
	 5AWKGrhiYciC+zqtPwozxKehdw7hXcpAFwe6CK0F40ZFcZiUzxJn0wk6A5vULKDSey
	 3h3x7T3muCeWZfC0Nb0HluM/tsd94TTFgvNloASsfv3nq7v3SqWy2dS/h20CnOv5UE
	 Nk1S+bqPrrIrIscH3N4cqOiyheLbXD6blHdzAmULH7XPTeITEt6wFmrwxacpFbl1nr
	 UFCd8QsJAODcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657F6C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262548738.9101.5479296048550950370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10374a43060e9a3bb441a1d26fc6291e03212d8531eec7dc13aa546b857869b4
Date: Mon, 02 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672625487
