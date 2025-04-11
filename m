Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF0820CCD9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744370994; cv=none; b=SulzKqLhppHsJyWldA9ntoyYs/1jz2FntMaVwlpfhzEhSHg3le8fo5jrthNoevB84akL6apY+Uuv/ibHxyuiIDD92wvnMuZwQrrJqGeRHHNqIY705/CVQzF+fBSRXNY/y5v8nMl/7h/5GzOFjiQbDxYDwNRSt+kAn5WeUh+wLcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744370994; c=relaxed/simple;
	bh=wPWesYzkNdedDkJZiYLuizr1ak1h+gu1LbKWCU2Av7k=;
	h=To:Subject:From:Message-Id:Date; b=Rhg3jDdGDOpojqyVldGrBaXyDHl11h7+Je3m3tQ/jrCxr8xt1bF3D62Zkdwhjm0Hjd4cos0vLEuzRdCUBU2/TEXuv6Ih0wEYeWiFv/t9yfB9n7hgyck86+EP5Yy59JZ9XROaZRlJfTY0+qnm+KXPFtxObgw6VHxJwdPalLxh65k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZPAchnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZPAchnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0A8C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744370993;
	bh=wPWesYzkNdedDkJZiYLuizr1ak1h+gu1LbKWCU2Av7k=;
	h=To:Subject:From:Date:From;
	b=TZPAchnpr3Rqi6D+yq0Vi9jWB3FliV6tqKBg1rXTQtP2yZb3Vp734TZf//r9NWgQx
	 JUmWnLTsSh1E8ADIfoPGwqlWXVKfUl2Feape5R2Cczvz07CxBGw6UDnFYXoflL5oGr
	 yS7dzwR7mWGe5+OwVXzfPUMq5Kg03UW4NsE1Bezb3Ptx7I3wC90BM9QYpPxwHhlJ6T
	 Nvr7XyrUd8Q10hZkzRgXgA0m7kKXgQrFAPDycQTNAU0ArrA+FS9FClzQQUjalEy3Vl
	 /wgXKq8ljoGGFHfsjT19Bj8ejq5noAAuxZkSV9qF7IUFwMpbeVM1fbOvRfuDDhy/zj
	 Sh5N6A4FIu9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94173C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437099359.2761.7019780909519360490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2a23f6da629ef0ae52ca2f1de6c40bcbf0398d7016ea0f2459a5774e63c746
Date: Fri, 11 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744370993
