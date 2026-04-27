Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2F83E92A0
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777317454; cv=none; b=PjA0EOHP8CXsDubM3ov1wbnvIvPRNA2JrKBzFPl0gQsmfulzWG9hELek5KhfJLuHaP0GAHkT1oxDlPTnvd//dIHofOu8Q2tHc02v85HpnNJlwMEPV0/2mBcY6twRop7Fzjg/x1Kyxj+o7uN8ADI2H1wz76qlyjOGsoU50c9CEaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777317454; c=relaxed/simple;
	bh=Qu1fIr9e9gVOAPvMgiHFMIWcQxg3km9LvdkJJ6T7ui4=;
	h=To:Subject:From:Message-Id:Date; b=VN7XnnG9ofMCwj3HUL1IQvwh5d73qCu1L4KXoCOzYlh+m+uPxG3XYuRKUNgNO0YermoeZ+eV5pZOgWmxnRciiG1+jTyX+T4fLd5K+qXUua6SPFipTD287kHDMSYGGIpo0Z6PMAUxHVHCjGrqns3cguhnDb/0KVTPjcBkNNWn7wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8Sft8MV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8Sft8MV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74ABC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777317453;
	bh=Qu1fIr9e9gVOAPvMgiHFMIWcQxg3km9LvdkJJ6T7ui4=;
	h=To:Subject:From:Date:From;
	b=K8Sft8MVcpj72S6JX8yVdyY9lW1maGQEMK3Hs0ij+h7m2tp8D4pZrWRuXHXxGqqdh
	 mLWJUAZ5PCriy3TLkPDS6sp2CA2AHI6eHQI61pAT+Rgnwy20MI2H4Nd3LSFF1bt4d8
	 LeLtyzvLTfPDp9mjUJvIR7CRWWGOfyawpOyUZbUvNBCfW+Is55T2NbhdsyQcGzgQc6
	 bQ0Kwi23wAgu4CAAR6nu6UcAykT8Jo4bDnEFf/kSwu3NSBO/r35CAwO26MjsxxciDc
	 HXbkYOTR2wOWIjIolPXtlJucyEYEHkAzmFC+6/ljGcahN2mP9JIwTv1/gLaXdMm/Z7
	 MA6cKuDmQNGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7030FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731745373.18113.13241655820450373298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba9bf5490cb256c9b63d6a90ac695af5b7117458366d1ef599291828664fe40
Date: Mon, 27 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777317453
