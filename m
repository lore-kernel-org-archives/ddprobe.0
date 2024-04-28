Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E02733DF
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 05:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714281743; cv=none; b=VF7ZITUEDjy5ypGKYZLOfLJnNb94GDTnVA6sy4Mez/Q6NNKnjeIYT/516JKIErxDUtXmxHfd76+33Z69IZQlnpRdJxhIQENjKatQTt/edN6zdVo9RH4sSFR3D0Ef8sRabU59U7VhN0Z+x7OvUiEWY94fzAWblgz4CD8x8MdigSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714281743; c=relaxed/simple;
	bh=cHA2EH8kMwwxTlvymUF3ZFNUtSv9qflJvKBNJ8UYHBw=;
	h=To:Subject:From:Message-Id:Date; b=CsE45fQ5Zq0nXyAct2/IyEuCDtqqGfbBUiiLRYp8Bpns4ADW1BEhG4hreez2JHjQKUIBL6eKsK/r9k1mRTyImSqK9kIaK2q1AiiCOOtGYgxGaPr3UBmfY+HDSrXI7Z/JHtfHtwvt302FPwIyX7mLi3jY/m4LiSJz8KrcXUk/mLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQOOQ6LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQOOQ6LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EABC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714281742;
	bh=cHA2EH8kMwwxTlvymUF3ZFNUtSv9qflJvKBNJ8UYHBw=;
	h=To:Subject:From:Date:From;
	b=WQOOQ6LRxd9k4WbbQ3Y4Jfqd8vPTYOcFuOsZt8glmtraMjuMk5VzlDdlTKYHoFKN8
	 rULKu/PzVX2BoW71hiVroZbbh3g/vbmXRnq0ePK+7soao/rBom7695jD+oKPKMoCrr
	 npmEDxTsj1i+McnVx4938GBLARfLazw+eyTrGM2yvdHgmyoHsye2Ei/gRnjgSJbigI
	 39+8Q3qI/xll8as9urfcdcH6K6P0nvK7KzaFUnHFacq9JETPkwyWOgtb7pp8DlEArq
	 acvZRfzOXHA6VbkcXBJX0PXi6qRBnMps63UK+kA10AmGp5jMw3614cMRSrA30/Jbs5
	 ZsONwDsWQRpaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0172C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428174275.2691.1718645921439117826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1ab70a9219f534dc5cdcdaa85f850b11632798ddb9408c57445ba8ce026013
Date: Sun, 28 Apr 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714281742
