Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07243346797
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767997434; cv=none; b=gUVixl+7dMNYR5CrAHsuigI5NopKBMCsSagwo9m5Hn4LPr2dZGwAGWLP1lqKJLtSnVF8/bA7PJ2rCNR0pZedeTWlM5MOlHbFHaoKCHpCVZhRziHJuhKBGS90SFejN8PbGaJ1144w4POEGV506eb4yZF+Zz+1PKWNvKMLf7kO2ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767997434; c=relaxed/simple;
	bh=ZRqbbWJb92K+SUHHGgcxfxtz+J4PCYuGOpVVrhzv9a8=;
	h=To:Subject:From:Message-Id:Date; b=gYwSSJwXiQ6e5Vy11H8njCL1RlC5tTnJ/0C6DaEQLOnIKu9On9Oc7F31mOy69Bi0kPOmeTc4vmZchuv1L/+4HhVYb/N+pS3byhiaLPXvplU1fN+uFFCAtTFBULDlqgIhQnrL618q4tZjqgD53BcSUSliyzKLVoVhOuMY+LMI9Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsWK6EbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsWK6EbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD73C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767997433;
	bh=ZRqbbWJb92K+SUHHGgcxfxtz+J4PCYuGOpVVrhzv9a8=;
	h=To:Subject:From:Date:From;
	b=OsWK6EbEqbEasnf1jG5b5JTzzln+8GCQC2Exlz20ZOAH6uIQsHHtL5YN+/jGOfea3
	 zjmAJjeyDdNzgUmwBsgXnwaboK5KPUMeuF3LvclkInbHboyO93YE9fe17FKxCLXLnx
	 WexTdPrLOWrEbEU1qzzq1xuKETeBz5qIyp5pK+EjgurAciBSlJAv12WI+zDah3zM5Q
	 NJ3S4+YAJ1eXqiiU49T1usB/x8TH89iqAWr54CX1loAmbNMgmJh+dpjOOAYOtDMDsf
	 1Ykh38TZRSmwouuYHXPkgZkXuG7ndZivYkxhcST3fXClCIrYebDV4ddlSOHpRedwPG
	 2OklmcxRoa/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E786D277C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799743357.24758.18097432574784214332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed78a0a0a5171e2d2a895c3e26a43bd62e5605a41cbec1a0206a665935a484e
Date: Fri, 09 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767997433
