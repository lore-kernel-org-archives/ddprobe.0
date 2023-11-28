Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067FC44398
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifZ/2ww3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B76BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701209296;
	bh=r66IU/ANiDObVGylhLkeH7QwzR7BazQyd4XHQFQ96/4=;
	h=To:Subject:From:Date:From;
	b=ifZ/2ww3d2p/4CyXvhvC5vwWE/ceVCUeYL3rgKphTTUkXucW7TWLafXmSe2PpTvK7
	 bloy6ocW5dYNOad7wEAqGG2yAComNHY1O+jX574kU7aQVsh2fX1SFjXknWk4mCZH0n
	 QSjSfHWZcJQnA5nqVMKj+1vA+JQ0pAoLb5wf1BRbLgyKfWGhYlj3z1ZWMCs5DvJ458
	 PUo5FM8x8TjQaNiVhK0vhXj12ePmNmA1EtOm/C4dInQuoG1+b/oM/EHypEH96WQGcX
	 g8ORIuejZsoMjMjrwkY7HsBLb8gZdYLK9g7WZ/BBBLU2v/cKdx7k3NlKPtpKeocbVl
	 Sc2om8m/1ukxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61545C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170120929638.19323.18308079878465965707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01ee22f6228ede275324980907ec5fb4ed1766c08e95214e0e9c10cffc0920e
Date: Tue, 28 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701209296
