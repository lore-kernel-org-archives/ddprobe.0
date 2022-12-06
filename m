Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE983569C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD6CC433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670367654;
	bh=CMDO+PbTfFp/oIP0xsLV/lEUzPypFxPW9GtHtPRKDBQ=;
	h=To:Subject:From:Date:From;
	b=ZG9i0MILZLxROtKCnlci7RPjqe2RgmAhSihAnpr+5eXPvgs2yzAZ46BZJ6+3aMPZ6
	 NU4TGdI7UYigHR4dgX67uqboaVmXHY7ERu3og/HPaxEgo5pqjULhXto/G+YSyijNo6
	 lMwRefChjcKCKNf8CjlZcwtogz6EjDqez7ctJXE9REmY7yHW8OcUtyTQJeuVTjmEnI
	 J4VtwlZQIdfedejOVCAJq8DysmxKOHuzXXlSHMQGyjcSN3NhCwoPeksEKJDN4KUIBj
	 Iypw7wdcDzyc5LAAiuGluW5aTMNZseqM+gaWmVGEefzLszLvcWw7s9YdZU/meyaSrG
	 Np77bFjCzraGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668A7C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036765441.14832.17364701405837278226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e49bb8318ad05292d6034fa757cff211bca5d11a22328f37399cb7426942191
Date: Tue, 06 Dec 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670367654
