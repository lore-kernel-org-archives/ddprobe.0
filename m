Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B58620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFA3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665796853;
	bh=rX/yNAyJod6eW1StNikzK5OOkodOO4gXaw0sgHZVQQw=;
	h=To:Subject:From:Date:From;
	b=IPtUQI4gre8qynjr112sWG+ez7xRUVt94iqaz6aLq6TXMVuoQVirVnx1Rd7nXwcoe
	 3yNPY7smLFRfTHAkcFCiSo/jegz27I02FW5YeB5yhuEaqNgymN+czwFTV+k6CdpXIL
	 /Np/ieqr4Ew2zGZ5zJyXOM3dk+ak9KaFPViJzWQ0ivp2O/TgV4XwQHgyiGxbii7Smo
	 bRQIRRY7cawAakJvXFBgDpezI9+cWmDP1pla85O/ouK+iGZHezo4ZtRtvluL9aKcKb
	 SQqdgT9HWGu4oTKhL34cTWZJ73ls61GQmLa7vCNkfjut85r8dz8oIgohzLnqg7HGJt
	 Cp+YmzUxYddpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C78BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579685334.17994.9528620570728952715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823ecc7d7d26a115485ea490f67e514b92c2ca67ee18d6af0aaa7599315a6dcc
Date: Sat, 15 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665796853
