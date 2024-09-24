Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB91E515
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727157354; cv=none; b=dg4bADZL/rBFgaoVj4WrTGzrCOiPww3utC2TYr7ozT8OvdiLaNJfRgcO47xjq0nOFNiPFh3wnfAL9s7fZOan6JSrn4fkj5XZHPZw1JLkzs3Ip7m7VwlodYzDsVzJ+G3qIMClUCcHJeAJLozo9ND9pNnAA57XeI3uq8B83tZUk9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727157354; c=relaxed/simple;
	bh=t+1u7gSFlMMPENjh0zjsveHiNFWNGJpcW+MSe99jcu8=;
	h=To:Subject:From:Message-Id:Date; b=G0+1W4WOMsGdwCVj7UIMGaYHkR1lCNdES16i6Fbv+S8Z5K/F4o8O8w3QpiN5Po3vqiuNkjb16f4zJVDoyQz8XCpfmt+3jrl/9Csqg/7tScg7zLxS8ecLcpnRR/C6MiO/eRB67fAXoPVap1gvgG0ab0S/eHk5Nz8ALs/GWRlMwL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1+fsNEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1+fsNEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91EFC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727157353;
	bh=t+1u7gSFlMMPENjh0zjsveHiNFWNGJpcW+MSe99jcu8=;
	h=To:Subject:From:Date:From;
	b=Y1+fsNEXAGHktd2k7UMzligtOlFAb5dagHL2YuiAMp4hNFyZ2Ilf14lazCijPj90r
	 9GhMd/s8x9VxpzLjzePtda7gH/FP7CsUJQ15+eG1hyfSA2hOXuYmU0kPNrrAIAnyka
	 ihB1hMF0IHYE5y2XyTxh3VXnRzhNvA6oGiYSj+toRaAVzfakrT0Wsr4nYhd8qCAbZr
	 s4vSmUZbEon2a4En0p2MlgHianJBLNARpMxOhw/8v+T5KGfQjpLlya0DCoi8kqZbrl
	 ErCKR1S3yRMD8U6XjN1Xt/LkdRp/ioK7eudJ6rua91w7zIdPAdIeUZjZa3Wgw4QPbY
	 H9yVdKm+E11fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632DCF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715735359.14767.4448974385503182650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b110485e92efafb420187846ec1d18258d00e751d919b6b036442f5849cd7dab
Date: Tue, 24 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727157353
