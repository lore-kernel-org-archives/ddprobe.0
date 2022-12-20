Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05B88F63
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DE82C433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671565887;
	bh=ZHm6w8ZOVL/JpPF5Oi1HtIRsAbURvJzJfTwKe49FiYk=;
	h=To:Subject:From:Date:From;
	b=vMi4bNQTQzbYPSfT369f2DO316LycSraVlSZVu79S1ERhVrVN6pv9bAk4j/6mRXRG
	 jP4GcYhGCE1+t/ProktBiG2VsCHUI+81Eq5EYj0yco78uetp3rOnxHoRnfRPPYUzUQ
	 +cHDJaBWSBetnOpDhZbAlMxh6M/0XzpjwtdrxRFCkI2bpzEZe764IggqrT8ED7HNst
	 OJOvou1uGPU8VNuxBdU6eqLIAZvE1BkpEK1s29+ogoQA3SJltKjfJZE74758s9uEOM
	 T8ioDHI5cxk5c31DwHE01Mantcw+bBy+WG6pfAF7VTYXtZlEHFx3F2HYcoMegbK7VX
	 RRf3HTHTf8AlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E87CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156588744.19594.9202926622833173263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c5e721ab79f047e9abea15a27c93e9fb4ee78489f9f15514eef0283fd4be4c
Date: Tue, 20 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671565887
