Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425D71474BE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720568783; cv=none; b=ZMsNKrCq1J0mvuwQ6WO3g6bQyJfHzKK+kH1mfwgUCCUoXw0eePC4qQfN9HfKdXx6rcJcSFZoTJe0of7SkdliC0P+KLucG77Ib1f2nZTde7kWdJD9XT7lcscN8UQDyh2WW+4UGH4z3TGmfsFxONZuXZixWRXIRIHF/3+MjhsU9Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720568783; c=relaxed/simple;
	bh=mTuc6XbiTnsb7BlBEiocW/dP+L7wi8UuZq9HxU4xhOc=;
	h=To:Subject:From:Message-Id:Date; b=RdK9S4p06R95+m4EBx0oeqhuz8MSOkeWk5FgQmimAx6+hXZGActQQEadFKiOLLdNCQL+e6gCAiRc+q1gJGJ8koN2bfKtKOyGsQlX40eqtAW/8OGeage1Jhlmp5PG6MSDWdtqsqN2jFDpm7P/yTqgf3vG/gGEG7rNFzPWJnBOMKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKg/BIqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKg/BIqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F40C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720568782;
	bh=mTuc6XbiTnsb7BlBEiocW/dP+L7wi8UuZq9HxU4xhOc=;
	h=To:Subject:From:Date:From;
	b=aKg/BIqHbJrMHSMRWfO1o1puzzXfiyuOXkR+vzeIKzYNt9BSyfIk18WUwHuOmc8cf
	 Dgp176qfGY7w8FmOazST8y7SVHzDDcp+0jAekVxcMHbETaGWAA2cxShDpPb6xW23iN
	 kICXIp7PSbq3dLDNd3UDcFbZYemwXkfkOqoHXYnL7YMqy7Wgo/mB5/AO0eW7GuJMNV
	 SaZZnvHlPmoRVjrL8r0u8f9qnUFDMm2jTVaBtr35hBaVMFZi5m4D9IlSe2Sv2Puiyx
	 fgRx72ePpjqDkeckg/4InMTBHBdti6/3TsZcsQJHo6ZVuBFGWA2mKHwrGvRfTT37Z2
	 F+742oluy1/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4973C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056878277.6209.2533224834620117662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc8353374141b5150ea5834d49ce67d32a75695dcece2493ec142b57d33de31
Date: Tue, 09 Jul 2024 23:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720568782
