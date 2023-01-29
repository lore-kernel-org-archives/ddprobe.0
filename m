Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5954CBD25
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB13C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674972785;
	bh=K1MwbxSLfiheFVEmOL+v1+94zb66gvTLv+iQ0HKsGBo=;
	h=To:Subject:From:Date:From;
	b=XWofbSgDavkycwyZXWEeGTNYzrlXpKJcRLX/IY1JbJtQYkLXnkJtq8tduiqbdBhFn
	 Ye1BdaZdPg46sWUs8UNrHje2YrJjQMdRMpg6/6YlX6QhPX/F6XLHKXoLNL7TuP4iS1
	 3eq7sG9l6AIK2m2G1R5OkvrfeBT+qch/dYT1Qo0oGfTKTC3hijwGYbwrU8FI1OVRyl
	 Jk6BYt0Lx1cuwescRsVZ8YDiX2Gj3nEOqfF3Qijp8tCVzUtxG8tCtweuFg7K+G3k5d
	 cVhZTvxpI0yBd3MTaJ2Sy1G01Ds+NbaUAcXXpV44oaeLMoCWyHrY6vfn/83sLqQ7pe
	 70S3VgaGDoOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE3FC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167497278574.19273.9826240172540592973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2912a96a5f60b24b968d9255afb4f669b2e68808581c7d6b1e122b7dfed2ecd
Date: Sun, 29 Jan 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674972785
