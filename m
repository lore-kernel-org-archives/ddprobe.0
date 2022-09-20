Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D437C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78866C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663703453;
	bh=GDyhibuo6vFaRlbiLOMuyIvhmFbFrCaY9fMAMhWxDmQ=;
	h=To:Subject:From:Date:From;
	b=GXBFD6rbuquT2NQt4LIx1MZI2r2kxPzTJ8voyWDNcIO1A0iJ94Raqiyhsm3fzux9B
	 02H7Y163xlxM8Iexki/ilsG6eljtFMO6dYreU2eRGZ6PgbOb369Tanw6o8I8AzzD7I
	 BEit+fR2pQMLEaEOJSJQ/y2sUFlxMsA/lE91bH6ciG8xQzUqo9DwmO5tiNWjM1hFgx
	 LEGRyqDOYLBvss2PVwYzr/OCHUqKTwxD00ruWcQav+vKWwZGZ2lCSmUYsG9J8lTNA2
	 4w783Ya1NCFtI+iYtHI+PynVU2DI76lJUADCoPBhqbSePfAQpqYHRlxYLyWnyWKgjc
	 eG7FpopUY/oTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D7FC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370345334.31563.13719290914570768846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e35678e8f79ce4000416f3cb32b6b0b348a5e47b8908be4af8cf59a07ae2cdf
Date: Tue, 20 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663703453
