Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1E42F24
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E9DC433CA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687906388;
	bh=EuxPfZ2Idy82ghZUTHo8lltxlmoEz59BJL1Zxe8CPOE=;
	h=To:Subject:From:Date:From;
	b=jXjI6ajNcxAP2mE2kcCop8Y/HM8nri5grXqTizvv/VDAXev8FJINdeTW7iPl+JeDH
	 1SVcHdGAuCyTSzHtqmJdVItBb3mVIjXCjWNa4OePLDWeu9YFWPfTtkOnIWgbDwi0Zr
	 pedujKShUys9RboADCQWKjGuMd5HsvEzClhkubunZgevLvMeExCBjsWg1sHnTIiVfT
	 XhWpFBWkgEpYkJ+r1CGfysAs452bH+Y1ZuWOL4kcuVoY2fS/PuienWbQOR/YULnNi7
	 K6zji94zweFk7HNs8dBm9+vhqFCKqFYtzxlocsoi/1iYUx9ESt0E5RqArkFQ/5ZN56
	 MRkH8ORZs+WXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20A5C001B3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790638878.13231.10535596501915614231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c9a2cd09fb3e1272f7aa06d2fb230ebdf4ee6b93b5afde2e5dfb7189fa52b5
Date: Tue, 27 Jun 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687906388
