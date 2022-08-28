Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47C83214
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF07C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661695252;
	bh=sUXQpaxZsWiO1lvxFitN4AOwXMZq2SeDDfXyZlqyMok=;
	h=To:Subject:From:Date:From;
	b=F6OG/2PWBYsoqnGg32JV/C0rxLTzKYAAdIC/pW5drxd0sx4iQDlvBQ5XLOVG4Vwm3
	 4cjNJ0Yzg1UH9/ygK6pfq31V2WHcrf8HCCI88IyqaWgVZZDPFkZPkCqbAM6YBzV1NA
	 zhmsaE7bG15V5XhXRRS3f5WK2+GWsTieLa/LqHdLQD6go8Dl5+9wX7rIQhOf73i3DG
	 sbJePat7YKgG6/+esiUbaYT+ON5AS1Qe0llr1gzJ/qaPpkhoSZKLtl/xTNbaO1WaEt
	 UyETDpv7qtdNwSWuvmAfb8zfvXgZ8i1tDG+XaWuKGTaqIxnyuXzD29EMwBmjdmfuq9
	 QZVm2jgFl2tBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B45ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169525233.6321.9685634671438179650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0802e9fd07ba769a14ab5c0dace15930220c9d2d9a6e8ca215a9e6e28fe2ff4d
Date: Sun, 28 Aug 2022 14:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661695252
