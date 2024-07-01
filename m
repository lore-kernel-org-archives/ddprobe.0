Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59790376E7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719815663; cv=none; b=alOPwZzvQG72+1D+P0mEXQkjOfCcG1/nwfnpI8kNAzxajvChsetXzWfCI4Abfnd7JriWh1ETPvWVtxv6q5rnuNQr5A+Ru1WdIb7SpTP4tZv+gDe3tgBUNN15+xrpA5MOYeRdQKopzXYT0OgmUQHT7aFObnl9h7Bn/YiT3txSpFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719815663; c=relaxed/simple;
	bh=XzkiuTaz+csTSVmEPzWdXM5kirEw/0yiiG5lqG26/ic=;
	h=To:Subject:From:Message-Id:Date; b=kEUFrVuTi3DTukH3CnA6ViyQ/n+XbTUfRwURm2nPX7rdPO8ICukTYjUKAtJwXH1vYmIhbNcRz4RUqdnluKw+WMjWTfdmcdPTwqNRd295u9wdZ8JGVKWP/K5LfcOv56h8nqGIoZ78+4FT5DxnRWBtCUyFk/op7INyq2l8bm/vXQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c95XTxe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c95XTxe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7377C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719815662;
	bh=XzkiuTaz+csTSVmEPzWdXM5kirEw/0yiiG5lqG26/ic=;
	h=To:Subject:From:Date:From;
	b=c95XTxe2KcuccvGB2R31KsQAuD59TJDDkG6kb0T+fYedz24eG3szWL5hA4aPY2udu
	 C5kPUFVO34tLd3tmo5pY2/QfkiZoXdC3bvPFCwhnOD6aYV4kOlJ3RrCw3zLU4jgqTW
	 fc/+LexkxosDcyy9eARyTyw8klx2jhpk327+fCVf4sYh4MOEDWWxweBWm1Hm6SW5kU
	 pijZ5c+aDFRPxFx0+XfQwKKhKiGV9eMRjPeQQjbORg5jFzvtgH4ti9SCUEZRGdt8jY
	 3ZV4NYIXyE3mrNDEXFy6Vwi36RDY3yl1+AP1GiG1A+3ZiZIoWDVc+fXebiLoaCk1fN
	 TJYrMZzHeDe/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF721C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981566277.28843.11349390546741027110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5156c296352e7871343be74fb3e146ec67288abeb28f69e295fd5a147a6192f5
Date: Mon, 01 Jul 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719815662
