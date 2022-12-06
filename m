Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16A628E7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6817FC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670319654;
	bh=/GbSCIM5pQprw5b/DUIhXd/VUiX+Rc5Z+umGhB1slhY=;
	h=To:Subject:From:Date:From;
	b=sKFy7EAa0Xu38tL6nxgN3uqXul8EtTJhlPsAR8HyTgKzhYFrjxV75NFvgkV4xnpD3
	 /legft/NHiyo1Xl9uRf/dzwGxjIzqPeYjUNfOpkLWJwzFGNfGfzbDUwhVyygMIZk+V
	 Hr+3o+N8vQaJkVJBfBTlEk43dZLaZzhULDeVyNA5E6jU2Ys+OambIb1lj8LRzzNcBq
	 0xefK19vJuIOcttguZ1vBAsawvq42gZ+y4VWLHhAaOXswj/nVxl8tRigQYodwZdOAh
	 4yCufMD+0NO1hZl53MH2bRAzOAIzkLrGGjYDUOlT2JvAAfxpZS4PgWVNIfXr6OvvVV
	 3cslolRjEvZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51991C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031965432.6652.11383472288543487363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02026d5d1948bdd20fecf77a06574bcca12d9dfaade3ffa1903f496ac4824452
Date: Tue, 06 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670319654
