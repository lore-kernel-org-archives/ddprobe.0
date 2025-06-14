Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304DC3FFD
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749896994; cv=none; b=hL0FNQ6R/hEtH0REEf4nRE8X40gcY2Ah2E8J/iFjdmJA09RJlS9jLeDbHQwbU3nilPWWZu8/O0BsduBj4MK83OpV8FP1dNWdo6wVrjfdSc5Q43KAeLGTntOrdeM6DVLypeYAPIyLYX8FdEsGIDMBw3YFM11BrygoHAJv/RtSlNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749896994; c=relaxed/simple;
	bh=UHSIoiVvRwNLB8ABdFrDNDly5XZoR1c9vHcdbhRDXCY=;
	h=To:Subject:From:Message-Id:Date; b=Zxmx1cibMPPygyNnvVmjdw0YF6GjkL3vrwfh++7Qk6WA4QkBCP+61lPufUkuJ6NQCDVdSK3MSQK5Job3jmXfgGdU73RNrKrokbEFcMe4KVeDk6rrsja4GDEaFvfSo9bnBiKnLbgwxoy+s5/5vY0rh6PqXV1OX8lfHLg7CUVvI3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcBNwjAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcBNwjAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41A6C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749896993;
	bh=UHSIoiVvRwNLB8ABdFrDNDly5XZoR1c9vHcdbhRDXCY=;
	h=To:Subject:From:Date:From;
	b=TcBNwjARWPFmzNuJ9zHTglB+Qi0oHvXZPvJxqsTVIOkFl53xluJa9gRdFFY9JtJaf
	 9vwTo6zjKL8uS0P3mlJpncBNaXWpF9C7mLnYcMHrzSYLI+hSTqZ26QGGMpK7VkZfG/
	 QyvbPNW6ZDav6t06/KsSXkwjZDBIVudxSM4mtKQ/JDQoJKps1LhUQCCjwqX6hEQEce
	 BTPUinSeaPcxMKxinbSDKzdxbH0NW0Wp6EkEK4PSJpJ1lmfBEKqRhH8D29eXM521Fp
	 5Ew3RaER/NdO85jopHiRfyUIC2Nv9mJVYlpClX+SWl6NHxbl6N1D484abd85xz5jyb
	 CFOslmJLfaNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F213C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989699357.8975.14457014820999899801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33195390a9c7cd6319663448d9dd17c6378cbb3b6c9695eefda9caf71f71ca46
Date: Sat, 14 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749896993
