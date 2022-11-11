Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27052582
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D00C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668163854;
	bh=bC0pnJ1RE5G/I6RmoO+NzuvTo1x+y6EW9Hp0NSBJKBM=;
	h=To:Subject:From:Date:From;
	b=rGirmAK+EYg/R89eg8oqTCfCm+FnG9kNk8MrWSvunF4STtN6E1QqnZSxky5HQlxaN
	 3Lpnr/CXr+QFCun7vXJRk77Ax88BeAxL65W5nEz16WdKbMi0NGskSPRP9McLSHWO1B
	 f+lDIwcpmZ5D/e4UHUng/B9d981LK2JxAkDK3TTcpgAChmz8XX0yB4yEY04TWxQuWD
	 3XmWpTtFFnT6+xkha37oUk2Zp3aQuymUFJDl4fipUlCt7UQzOqihadfOB+UtozDXTd
	 0zFyAjZbVoC0DTiG/YmVy33HBybR6NNvLO+H7steRBxUem2aQTTdaIpomMGhWAPShc
	 iqO0krpqzjccQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A50C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816385432.16589.14942896885263067048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc22361349470218ef86008cb405149d56bc4b25f0934ab9e00f9aae80e7320e
Date: Fri, 11 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668163854
