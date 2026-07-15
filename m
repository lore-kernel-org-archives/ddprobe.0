Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277764418DC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118514; cv=none; b=feZmR74As/jmkeRg+p/MckI+XEuf899td0ze0dENHvpE0J/DCxVjyZ5pQIvNRKtopqa2tWANA7JWZVCFk90F+3ZF67hrk8d/ihxou2CxRnUqRcSv34vSzo99i1C8/iuDxChzkUOVHxDrmQIKhKL9Wk2fmEzUUH3ltf7u0Oxi+/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118514; c=relaxed/simple;
	bh=noJGu+VpJ1rgG7j24mazEA0TKV4XLEe4pMoLMbFUDtY=;
	h=To:Subject:From:Message-Id:Date; b=bDLR1aMl7qY62EGOWZALi8HiykvrWwM6+eYnWkF0iE6aclri+ea5k5g4hRfOYXvT7HtH/9xeoR/bRrSpRRdu0p8K5Ohdf3jSdwXzBCtccJeD9uUV3TRN+S4PZy1ArWHrpNovU5Vxh2cJm8qlDGSu3jsZXT+VKtFmkYPU5N5ohS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnVAYPJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnVAYPJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AE2C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784118513;
	bh=noJGu+VpJ1rgG7j24mazEA0TKV4XLEe4pMoLMbFUDtY=;
	h=To:Subject:From:Date:From;
	b=PnVAYPJZCDR2jXngaGaMkxOaqbJfGwfwGdxVQen1AJSB35Q8yN3QZIUOBfFKcr9fG
	 RZ7SASe75bYl+aYJI2n1UOhbSZrEB/sQ9tuAHsiGyWvRz2wM1eOzusjtZ+ByobwMXx
	 TgJ41lB5zu3/Nh5MgluST54ibGJQM6+Fb9QQbZ5HPIbh3/GxtEvfiyb1xIJGzy8TT/
	 IeuqxMQt7XMlCX6peTM7563e6+M3KtHLJeOolc/7auiqbaGFmWDpguZ8IgQ04AZJfK
	 JUNMTw1MCpLIOcRpnCQZQsAsmz4h3QE+s4GBCe1zQpNH0uKIkQ0JovdxEr5bWdEq1K
	 2+0YoMR89ak8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86B4C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411851368.26843.17204790091830592407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbe07a60091dfffdaba97795759643aa9d04024297cd293218b19e177b40fb9
Date: Wed, 15 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784118513
