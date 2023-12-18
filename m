Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152E41C02
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU90Tiqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF71C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702874296;
	bh=gPhRm3y5s5JZZa7cf7T6sYYTVUdCH28DqFyNMYmKHSk=;
	h=To:Subject:From:Date:From;
	b=JU90TiqtzvHYI0Me4+ajEbeQn6skXNzkVw5lz6Nmw/L3T8sXIeVXv4foFPD3N2Bkd
	 G5RpYohAI8fRAIBtnmQqGBJQQey+XVsqYye5nsjtLgkUG7GeH9/ORAqgAv1M9N9t9t
	 pSyEr/4vpx9fF/DjKMcG4i7uP/6iFwZTZ1YW4Gb5Ge93rD4TeFXe/u+G01pop3fNpe
	 qejwhZgJvEY2CjPegXZDdLsowS6G1VwDBjxwKKNGH2F0jvx9BHic72qL1wdsrkmFB5
	 bm/97optusy0CcvFr//yHePQXvdZaes/fTIxQtXLtyZoXbG6aP7SmxtVZ6gFNd8rYM
	 /vrVf7QydPrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F3FC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170287429637.15148.6074395367861842385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743eeebdf017ec301220d6327297163ced8906698c77aca185f915f4a2e5c75d
Date: Mon, 18 Dec 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702874296
