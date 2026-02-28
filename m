Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056B32D97A6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772296494; cv=none; b=WBD4U4ETrCbwcLedHneHkU6ZPvc/YL5zpqulu/ZUcMDtzNf+3aXfMF82H7rCMkaHB4vqXZ4i387ylW9CG7ClGsi1Tq3c93vC/ARiUbqZYEuWJcxhL70GJuPWHjaK9P2DOixcJ7dp2R9Ou45pCLLTVYlnuhgd7XDJT2sHtRgTewc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772296494; c=relaxed/simple;
	bh=L80AZXcx92EasM2LLVNoT/nEG8j2tVfkUFJgiyePhXk=;
	h=To:Subject:From:Message-Id:Date; b=Hb+nAB2i95kDW67ab4ns7Ujhi2T8LAUsdWhOJLqzHlMx3u3iSn2tWXy62hAaa4gZcnrPuCw2Bag5dus0d1VdGeqwcKp9KfOiXZ4pXtTNHSweDvqp/3m/zo7tc5jDkN/7ZMBhQL2i9vBIDBE65JBI4q404f1RkeBiAiZG7c5VXYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3PtIVmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3PtIVmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C8C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772296493;
	bh=L80AZXcx92EasM2LLVNoT/nEG8j2tVfkUFJgiyePhXk=;
	h=To:Subject:From:Date:From;
	b=Z3PtIVmMJcA5iWKz3cjvkTkAj4TOLrALzgj8v24VMkMYD8yMootwOtuw/Kk/Pw/w5
	 PDGKAqhyzJ4LsaXsI+yxQZUj76LWbE5QhPMlh70RFZ2x8HmQxBpsiM0iQLz1yDT28t
	 fPdEh6BNf/eH1AbCxqZRNuhcyM756dCliS/G8nHvMED4rmKOMoHwsO3Dt0mwnOIQrX
	 dDlIiQieZpLtmf42Q9P02EYSCezZQd076WuFW3XrhnEIHY3mRQIj8dJbLryVgad81d
	 MAWt609rpYcr91wQlmlHjAjT4nG/ck/nAMwU8vBeRHSUF9qjQS2xpuPe5GPPF8Genr
	 h7w+XeyC6jOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97626FEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229649358.24188.15944181253758126218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cc1352ae0fa9df88d4aafb19296367b24a3019b60b682d894a0653a74cbea6
Date: Sat, 28 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772296493
