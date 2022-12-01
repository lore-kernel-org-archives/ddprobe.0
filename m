Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C609A10782
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714FFC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669929054;
	bh=UWMvWLmufMmsHMjYjzADzJaaoT+mZbut7C566MtNShs=;
	h=To:Subject:From:Date:From;
	b=c7uSbMBEfTUczNz3juftvmsTuo9Za18l+WzRgiV6CstImGvySdF0xnf+JrHhrlW5/
	 3rv0RQZ0QnFV/YEUJbf97OisJzGr540NkUg8ReUau97/IWDpj2tKXquxo2Ydw0GDab
	 qtFfihkCKUtBy2nFDlrbIkb/5MICMIs/fb2LSVHeWVpsaMb+iStBeAzvP6/C2x0cwC
	 o0mfqe3hqpWErnc//M0VbROkB6yy4QygjTrMGiR8YMOoyrBciV0qNNy6ez9JqZj5wj
	 VOn/IUMN+cVjWAGwldNEx8iVvTyblZsVkOeOQGJaiTm+yPZS0UCAFZrVsx/EkONxW4
	 lt5KuBjtNEOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DEEC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166992905435.14004.5511007739884369347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4910e8b0919fd2607313a1a1e11daf35657a40eed07914e4042ac15535f07a69
Date: Thu, 01 Dec 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669929054
