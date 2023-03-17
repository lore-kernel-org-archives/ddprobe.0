Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D41377
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 00:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08E76C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 00:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679014206;
	bh=F/LH1ZcEobyo1MyQvHNoTd5lU0v0Gu2XTE1nExXD1tI=;
	h=To:Subject:From:Date:From;
	b=ta2m36hyywW3Y0WtCGQZDb/XZuD+yA/zmCgZ4dn+xvXJiLJ8JE7phSZ9aKqJRaDo/
	 9edsoU5qF7aDf7XqIURAwb9FEYYAS3kTDEy4ahMnZUbB0D2V7GzmhrT1cK8GLysd7C
	 +ucwGEmybo/2bhsk97GoI0e5PnCT1ReB29xHQYLq2ltlhGowG5et73XOX1yKWEMDH7
	 oaoPYjdaP9KplE4htioFR2mWMj2Jtke0lpT6z87L2jlJVfJQZ3meEH5IE1sl/CpTWE
	 78k/DEN2VSdVz5tGabZofW5t4Isz7yqu7Q71bUlwbFwJiglMp69sdOX4NaX5lxV8zR
	 CC/mrov9GkNcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9ADFC6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 00:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167901420584.22260.926267898406152088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ec547cbeffca62553fbd51099b28256281c8aed811f91b5180fe7af82dc09e
Date: Fri, 17 Mar 2023 00:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679014205
