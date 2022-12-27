Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28D462C
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847D0C433F0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672101687;
	bh=7heF8YmtlpbATbAT+furRDpH8l5RVpXLfAAbej9/c48=;
	h=To:Subject:From:Date:From;
	b=T8Dym+L2PXe1cJSkZUmeLqrUdAprOcNdhKz3jpmtCAxsSu42nL4E/w+ZZO2OcOPYf
	 TObJFH/ZER0ycdifYUHe0+tFtB6O0QuJCyvaPl3sUGsUdhkkhz18iovBArjWDuOxFY
	 jUBiSu/48LNarYSR3LJE4h453pexAWLqCzuUOOSGebiVhIHwMXcoYylceGgS5ewkZq
	 b1C8kfgGo9uJcOVrpmApMAhG8NOcJMUv2D+mvWyF+HYHWFk2QcWvkCj9tuA7E4khhh
	 Bz8v+EYdwVonCKecS4FH9CXwFXMYy02LlFNqgCXxhHmU4J9DC7/68NAQBvwaNV6J5j
	 qTU9hP83jUHTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D4AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210168742.8867.5336432326643670242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e4519a09b81fb9e2d385349b6444ca4342a7e7ed219696a840e0310947f5cc
Date: Tue, 27 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672101687
