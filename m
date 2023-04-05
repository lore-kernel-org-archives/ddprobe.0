Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416A76FDB
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 16:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A19C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 16:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680712025;
	bh=7rX1s0QkNDf+cEudcu7qijcPaSpQu3YFK5VNueZ+G9E=;
	h=To:Subject:From:Date:From;
	b=sMhynzPEkXvY42mkRrP3zCl/iunU1hQI3+V2OGps4ARf4yRB4lMJKXthQnbDt9nII
	 3Kdkbjn32MXx6ZAICB0PnKFhBvJMgKeKjVR3e/ULYzis7F7EP6grm/lNBfq+enxzeV
	 NDgxT68bI1otYVbXWRZoyW61nyT2BlqOZoUqZBYp5u5uXTUF6rATqw+oE5FHZGGra5
	 t1USces0aiCPlaVZVFnmvtbVjjaopjNwivOTzdd0e/dtKAmcO7vIPiKI7DBPNJq0cK
	 46/rrDroEUk+26hmtyMokrWflB5iZxzqdRvTo/YT/UNQQTDRnaIBHqyasGqTs5GtzJ
	 0cDxKT11oeI1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E3FC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 16:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168071202578.19647.14198580595445371140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad9a5ac5414b2c6a2c92451a3bed3137ef3cd5ec6c4efd5cb49036fadb433c2
Date: Wed, 05 Apr 2023 16:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680712025
