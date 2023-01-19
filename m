Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07CCB43E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86853C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674159687;
	bh=H7hyPS7k8pd9caWzIU1aCsEgHnpucmEhknR+sPxUWSQ=;
	h=To:Subject:From:Date:From;
	b=axoRH568Tvt3Wc67Zc13+1urRM1YaTEGdIuNGREgyNNok+Ebc/z9Q1WHwkyZ6LsLz
	 tRCBFWM4A4O2boir/kd49n1jF4isSIUWhukww7YZlgj21WI1VdjC2wh0v7vJeyU0TO
	 C+hwCdGalc4ihXQxsbQT9q6s55wQzvzh97mkTsCMae8BONNIx+TQEcaIvPNgQ71xCU
	 DvU1Zxebr92ObjktDv2XrEeLAy+cVkHyU8XA9eyeWV424u2t15J6UhMp9hrS/DGG03
	 IO/42BDB11RSIV7StQlSBtTWRyIRQwU613X6f0Pz7Fc13gcx3/VEBdd0t0BBkR+WOS
	 WEOTnp5m+m4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0DAC6379F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167415968743.5426.15218000298985052177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7e63081c6acf8986ab50baad1cd7faebb90712dd191844d20c6eb9cdc728b3
Date: Thu, 19 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674159687
