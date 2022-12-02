Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DE7257A
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66306C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669986654;
	bh=dexm7SpQt8cKQKU7zgfjoH60sxjDaUJfYT0An1KmVio=;
	h=To:Subject:From:Date:From;
	b=TnqEeENyfg/CZFfycUGUFzQMBw/rvcdKrjxTMvsA5Ekbhmmau6tlqEHoqQWEN3/r5
	 Clq22Jv6VJhL2ixjuLM6J6clV4+vQSuhteTNlz0o05GZ4NznCWZhhdzCPhWTqOy9gi
	 10us2l4AD01zztx9gYaR8ct4ntqKnFgdTSW/k/Bk61MeSBqdaYpbHtnsOVRzOcetQl
	 /a4eoJkdTxQVuCHi0EoSCl1v+iwf5gXzHLDUFLUKkPmJm88mtfrm3s4VYsgWvh+BI+
	 ktf4iSEYHttxVXa/s+g/mG+kjm7Wh9wSjZ0S3c/5SdVDyBgd6uhXOLirUFcNLjW6JG
	 a8KYNF4dkM8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F909C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998665431.27087.5913716611845608165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52819ac3374154f04db522fae2c71c9436f907d0d298ad26549a443b93bb932b
Date: Fri, 02 Dec 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669986654
