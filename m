Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8A462F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71911C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667289654;
	bh=jklaTjPcxWVxCSGB+eEbiY1tM3pKb+8nSUTJ/88y+Ns=;
	h=To:Subject:From:Date:From;
	b=ZqaF8HhfvAbzQJt+D/gU6+dRtYnHRQheZBJJ2slmaTgvFzb84MC+eoCoCkYhjkMCF
	 SYKLpuMut25KzYEf7I7dkEMOqlgZyMUx1F77xJZa12gnWLjEG+0q/5Y09ekfjYlH+x
	 I1cig6KA+C8uBquvgsM90J/Y3S42DbK75nmeqW2HnhWl7K6uoyrK3jDPxjUvMKCwgs
	 QPoP9PmplDb4Zs2ie9BeQUSrunVHh5VCmVOXEN53E8NfUM5sgVyO+QEPNrdvjH5R71
	 socB67X81JPOz9xwouK7e1GBh/pJdaqENBf0rVV5NufmLmFfoG/T4n0klSM31KV9Ge
	 Um8hv3yBsGgMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569CFC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166728965434.14379.5902272962311937532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8d0511d32a1592c85126f6fda0231d82c6891b813ce408f5882b10ca245b96
Date: Tue, 01 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667289654
