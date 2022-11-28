Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C501F362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F24C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669609854;
	bh=9Bg8v6hAU6nUK1a03V4zJvSrhoMoGUeGhsRLw2bZRQ0=;
	h=To:Subject:From:Date:From;
	b=YTpdPeFdxpovUEF4Ve2mUhoIvNPb5VdaHN3W/jiY1Y0bML0xu7PGCZ0jod2lOMVxV
	 jlpDq4yL9gN/sfcUZNQ8QJh99G13Ihqhqn1wumeMa9H0svdS42KsVspqtQiioofNY+
	 2oRIMbpn7JXNG2bKMTLz14BUyng1G1fcIevI7zJPUXjBc5+wsP1G9RUOdFJDSMjjqE
	 WKcxb1CceQvC8+A6vX7i0ANosjBJUyyD0yPvheGfY7GJPeTdh+px4KZjTLuVJHjgA9
	 Un4s2ROaMsFIsjj3QyGCEDkr7UiU2b5cXDh4Mh7dOOudDkWUfT3tiS8Tl/UDJ7FG7B
	 xIzx27/a9X03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EB0C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960985433.9501.1822035407428073843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4205e17bc928b21fc4cb4883374c9578013380f4c875ac24ea2b4f732eb2c1
Date: Mon, 28 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669609854
