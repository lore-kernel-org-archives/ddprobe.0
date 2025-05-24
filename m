Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466B57262D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748116194; cv=none; b=MKvq10g1y0P/VOLGD+QKgvE7RNAc8/uRs/p4Hq4zvxBqhdV+YlUGp8WtMT0+nRfnkOl4Q6KSteRBObo9yiEXlFkSOziBpUJS2vOq3XN3Qlg4Np/rQWgFGsO+gwZQzQiYxUHrFR/BV+q6bTipNGDQ7czLk8kQQ3b0jFYBHcjIMy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748116194; c=relaxed/simple;
	bh=hJiFG0ODYffHzAjKZntD6GzZ/KK9BDOfIwyjUmbhhUg=;
	h=To:Subject:From:Message-Id:Date; b=eGPdoAyTveTaxEILQYm5Cut8bisC13+qkyCapgGD9umdBxzVBFbZ45gkXtNBu5+1vLKT0UupyKmXKcSaZq5zIexROPsfWXW0cVU/6C5CvjX2MWUtpTn5Txpz408mJrF9Z8WyYvwBk3LGUWgbDdGl7VzOR6Z288i4Bkmq3dctRgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBi8G4Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBi8G4Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748116193;
	bh=hJiFG0ODYffHzAjKZntD6GzZ/KK9BDOfIwyjUmbhhUg=;
	h=To:Subject:From:Date:From;
	b=rBi8G4FajJj3ob2e+60wrqtxCBYVXHg8v5FbI0Nrds1wIytvDuxpfMban6sPFbhsX
	 V/qXpmMBF0REPFAEbh2SEoZbjzQCwRdu0IV9FX5EG6LyTmtjmA5C+DfOEloyZxoRIJ
	 ftwfIcULBOLGSP9R7M/vPC71iZPDKDJtSY/gLHmPzedzksMEkaHQVSwNauA+ziLT0L
	 sc9d+gX4ExX4wVxgD7nxE2NdAlWCJqJACn+fUUaR+ILCuYa7d3In0JjJs1z3xAxicC
	 v0LzpS45Y086TUBsmEfq1CBGtAhBD45uSgOYxbJDbQBQOaW+ExaUal8Tl0jpkjp1m2
	 h5m/H5HvVhkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C6C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811619358.31865.16488888081759953443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f7dfdef80584086a3c90eff26297d80cb927a6081264825a5e1904e4fe0f4b
Date: Sat, 24 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748116193
