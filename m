Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1E63D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C382C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661553052;
	bh=GKqx6AYF/1s//Epe5kmt/idA6aOw9+Jh7oGdM6XBuSk=;
	h=To:Subject:From:Date:From;
	b=t4LECccIgFztIXcn+gV5nuxYr2n8QYFV3/TyTbO8ZZmwcLzNf7ljsOVAyAht4MzRh
	 BPT8SysDkxdP6qrETwrH3QJdmbFAXgJt9AIpbjrE9CyoA8IbYdIQ0SxyNURMq+fW0l
	 5aZ3bNuEo6PqJXocwyjy3oGry70ocTsgYtr0j8S05IRLiVqxhXxXsAtA44ClEpD5GF
	 L0tOQGw9Vcm5alFmpaZd4Iq0xwCT80p3hH6YcsVZteoiMRn98v5LmuvnFHV/u7jEWp
	 klqhrEQkeWGdyyWkEXgzOS5l3jlE+kzMbFbZ30JzOVbPp8Lj+xojFEIYAomg9e4B01
	 G9c+lV24CTJKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F513ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155305238.18199.11690759302396979334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469cced0f73341155b1e804d12c7afbbf2490a0e62c397a22620ec47f6e7f55a
Date: Fri, 26 Aug 2022 22:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661553052
