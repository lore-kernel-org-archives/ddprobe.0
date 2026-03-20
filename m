Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E0F28507E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773990894; cv=none; b=HKBrr+2mGJ+5yG/Of6XA+bnW0zqztLd9FfgyMTWGt7GzdcX17wf+FxMB4daPewgaDApLaYgETNZBeCo9ynFCIfshU5kLBZgUDuBLf0ojGyo2z53xGbfLEsMJWPQ8sCLoM3S6POBmAFQ77KXsfdfFNo54ClJADpnVfldC5rmVtXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773990894; c=relaxed/simple;
	bh=d0PcNF5emdkqXVIgRfZCXvKOiC0JLbiXFWkUgF8sRys=;
	h=To:Subject:From:Message-Id:Date; b=f8sm4uP7zc3T+5FOjcz66vSymbvqwXfdfTLO+XQZMfFuvwA5Wbayoz/WouS+aUOZdlIzTK8ysVBbmVkNMvZPvJT9m96Yz5xNNs+2U3wc/vbPA/kWbupXl9JdFs/JU2JsgUEchBkybZNFJxZpH/yiNp8WxsoK58GIoJzBiW5AOXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDK7qSOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDK7qSOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A170BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773990893;
	bh=d0PcNF5emdkqXVIgRfZCXvKOiC0JLbiXFWkUgF8sRys=;
	h=To:Subject:From:Date:From;
	b=hDK7qSOeUqPrm1gboUCs5Tl/87+5qax5EEuMJifrhup7z+b62E80JGCRL8ybNhn23
	 xyXeJ457weDMeUCRLfdvoWOg81LR+oWxBo9el3YXBPoLvdARUdO/w/c60k0vhRdF79
	 h40KCDEnlrqGiLCJjAcaJhFJUgdlGgIH6fAcOvNOZjh+x5Pa1ryPvdJUDBfTmb95Lz
	 yY7CV3jTCI2DkOmFfgPyOjxZroj+BX3WTKh/7T23gA5BAwUA1NHDoIK+/baLqz0nn+
	 y862aBrbG63o8LLcp+iOzx+qcdhOp0cTsv2H67DxR7RknEPkD/6cYhOWw+3O4a7KKP
	 kHo0FzGK9+lIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33A109317D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399089357.26153.13402304153717352449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5583fa5cb77750d1ae00cc488233e0e677959f704173a2bb5305009cfa0b22cd
Date: Fri, 20 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773990893
