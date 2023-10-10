Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4106532196
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiCyuIS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CE3C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696968428;
	bh=emyvDQezUGUW1UDY7d+WBcLi39rg+9FOwxktnAFSVGw=;
	h=To:Subject:From:Date:From;
	b=OiCyuIS2MEr++Ri1ookfwVelCCS84fs+MFWOW+q1kfcM3RslsyrZtzNl4+WctCBkC
	 nkympehyodqA/+qpNqdxDbA0p02IC+oReaNuXVEfL+xYMMSHV9XSDtG9ios+79FN1R
	 UotFMlkwvHsDw5iUPXEXpFJ8InkBrdDYGf9rOTbDOexidvnegFelJip3ELLLLLKNac
	 79NLnO4NAu9rR+iXwsI7LZJK2Ea1LdH0vpG3lHQzJUkb0ZyqDdJMiuiiCutobElPih
	 tdQUcQvVjJJVFzUT2LjGYNigqy0KK064JS56Vz+j1wxt3YpeN+MfmYF2cUeiwMaIVl
	 YBAQSoEEXad+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACC4CD8CB6
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169696842868.26472.8914127548344181755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20d0e6ae6c65caaa933a487965eeb9dd236fca72927fe0fe0c7d4e797f8c5b8
Date: Tue, 10 Oct 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696968428
