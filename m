Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C961FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84897C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672383087;
	bh=bZ4jBgX+tbp1PXoidiJ7mB4nAw81ujwkvnpTQdZYpAA=;
	h=To:Subject:From:Date:From;
	b=mFLkjau/iZqcRTmELAGZR48rR2jhNK6Gg1VbzxdmRwISUSoieHBv75/CXQbdRuO0/
	 HbBJ/NZahhRwKcNQ002eQFDSfP4zXiBazjHQ5sI/OACp04v7kkl2jTxauH/XzEZ8hM
	 mqordjsNQQR7MhV7kQVL7xS3uZu69wAO4DJllkVimwvPrtRWiGqHo4+VIu5s+KlwIT
	 rcMMTtOWJVnsDV35id16inJv3bP9fGIwbkf+JZ321991H/2C3xFyweQeawJhpHSsZk
	 1ruUhJkWGe8AdQ/nruh5UvLY1TuSfmrpJcOoia8floiRLkX6EzO5MG8tvO9J1bVKM8
	 YKI4f/3DdZkhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646C7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238308740.31420.7737664471981908563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ac504a69b8f73f8f07465bdc859f877dd1bdae826b95849f94e2aaf0d04eae
Date: Fri, 30 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672383087
