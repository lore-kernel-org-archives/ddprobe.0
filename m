Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4910A7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0B3C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674502385;
	bh=OR41D/HAnwby/Rzhe/RAXaCCQiqsj34uXugvTU1SxY0=;
	h=To:Subject:From:Date:From;
	b=HR+Iu9MsZfVzq6AjoP4kW0x50TXo0vOVwplKX2Fl9RkXHMZGXDMO+IDW2LFL1ermE
	 1QESbP8TJGwMhpBjpuelpFDbMEMf3wA1rLddVSLSmLhuXkY9y9eG4rVg1JLDX7Zau+
	 mgQQCRkvyn3d+1Dq1xNT/c8njpN1943+Cj3pn+keROCnYhVsyu3RiV+Mf4kK4YU11c
	 8Oua2OdDKDwKLz3ZenbMyvEFmMN8BQV4ClBQMm5QczhtQindfCUp1+KizavrDGbOee
	 LKFEk/UNR0fctmzmvy1CsoVXCKHUUzaMxo8IY4OqvD2wAmbvHjge8aBH8u4+AAhefT
	 UrRzcBosnSovA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB09C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 19:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450238576.1644.15333715935327609781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede692d008cb4e4d66b17e4f6f4540e9b6ce1faf55e76009660e0c57db172d69
Date: Mon, 23 Jan 2023 19:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674502385
