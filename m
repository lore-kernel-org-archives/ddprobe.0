Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C322317C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75720C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661736052;
	bh=sGExbLoHMCcYqGoUd7HOercIO94vWK/1nvx9Qxp+k1E=;
	h=To:Subject:From:Date:From;
	b=i3AZNyvLjoycWbBZYnzOe/U9+rU951laRWJFeICptx7NO6gyIol0tUCIgh42zqx6X
	 sY+hHf23P1gRX6GJEXhdwMoHa7lM+/favgkjCmdUy8c9thMbw13Ep6+0OkbulaTXXm
	 ddo1Tw/l81nLqUq8UgN3h4ieWog55/gvMq1ni01N6wWv5zteuNGz3ZqPayd/jI+xAA
	 ubPhvbmSv7D/OZXapbIvTZA+ylASwyFNbSzUlXPrFf8b8exdN5MZsFEhsVQxuHs47v
	 2wf5EjGe9roYX89eXyQzZ9SFh64gFDvr6iy9T1kanzmp3Nsm5kTr7PSnLsSzuMgI/f
	 OqmiphpShR07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F55ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173605235.13863.11498499216260426671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f2ec2c22c378f6615ebcc8ceed23a31c6fc310ffbc8af305e77ea6a4f3e747
Date: Mon, 29 Aug 2022 01:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661736052
