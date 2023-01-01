Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33CC17ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80026C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672552287;
	bh=/ub95kpuCCnmeFRLp1uZwqLyWrwXj5vQ7Ul9e0sL42U=;
	h=To:Subject:From:Date:From;
	b=ouXBLusbzBCMSgOCn/8+MIVcUQpLKzkFOqpk8x8i+gjlFEVOoX4C6yw+MKS4uAYZT
	 Zql14CUQaPpg5DfVF9hsethPuEz0vV/K1GQ+zbx64WHIbHhaawpIIUMikfzb0puyvE
	 bw/EHC0B4H0GpOiakBR2cUNechQr+zZ4Mg9ICK8k0JOoJD/Nc6+HielNNbY1Xr1Fuu
	 YN34p6GNTbyIAr+KAJ/8U31ABIfW5GgVhQrq0EQ7rZL9+M/zhd9RwbR3+l/CY1Y0LO
	 13r8YuPf8bEub6wkUQx4q2a4BFZD30PJNSyljzpdB4KLX6uEAoqLW62+QWNGf9zlOC
	 uPVI3Al0HsuUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E55C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255228739.21763.7828398211028064371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8993a5aeced9a211f5d0614d9e1946c21377e4f91e48292fa760accb47b43f0
Date: Sun, 01 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672552287
