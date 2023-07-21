Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAD1363
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 01:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF35C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689903128;
	bh=t6N40MVj4qiA/pUxgpBPqKgyQTVjU4Zit0KT+FPJh9A=;
	h=To:Subject:From:Date:From;
	b=L4gxxLKv6f1k7AN2hwMaSUstEdsbHnOhcFtRNwx7mFitigUJAWBvwr5Q7LkacnICU
	 qnO1eRI0fn7iHc3wj3AhcU8CuAKEdzwN3H4bXaV41ZcD9aBNM7O66OiV0YWoXCFH30
	 XR1y6FBHwgo0lhv9QcWGT/3m3bO04NagGr/Q3olwQ26rKb/UpjsUkgTkGE/a9H7l7j
	 JQnv7/XjNhGWUdWT+cQ8KeMm2MH26bU8ZplgCe3DmvZO4u0uh3gRx3Bj27/Pv95eFu
	 wOh3OAAqeChT+iLBN3UPME1hD1eR8ir5zH0EdO1qbXcfpv14gMis1hk0mqOfeLQPK2
	 E4nNwYWjR5oEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC37EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 01:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990312874.20828.2307108924298499628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3af6f48b5144a8fe939501d224e47d935c9f6f454e1939b498b23aa2a770332
Date: Fri, 21 Jul 2023 01:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689903128
