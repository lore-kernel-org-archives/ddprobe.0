Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B878E7F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729CBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666069853;
	bh=f7T9DJ7k1VhMaw8GfJuTE6HWpRaSmqvfs7PhDefpD9w=;
	h=To:Subject:From:Date:From;
	b=khN779mPawd1ne52A5dJLPgJPvsYPrX56IxvR6YphuGFCPsAC0CiIAVVG59sS/BXS
	 rALJdv+mZc7YJ7w67GeI9bO/qJxYKvIb6BMcESZ4lFiFtn2YYIzAeHLCuBU1dCkiv5
	 +5v/bPFwTFFORqphFcFYblm33hicDDYcQIdkAdzVi2yjnnWyF6thhRZGq/FLyse8TU
	 9MbvzUMedaDOIVr17sL1fBHUYUyR07FCuXI/8+0ecU/+roKQx1r1uo6I243Sr+FZ+A
	 XjqJrIpjv4KmGlEHlTJR8uGljJ9Y9aG5EDPITP6YsXG3ZycyO7Qcaha1tukoU5mgFf
	 opTEgjX7CvN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569B8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606985333.9378.4473275515443101712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6864bbd218c390c6be50e8f69cf0331faccaf4764295ded0d744aeeb6bf8ae38
Date: Tue, 18 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666069853
