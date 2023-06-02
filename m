Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739DF15A3
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 00:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB918C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 00:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685664366;
	bh=nLqvVNaZBIK0nI8zSVd4yEQEf4UJwtukcTdZp2gZ4qc=;
	h=To:Subject:From:Date:From;
	b=iLghrF39F2uzAfonx9myEtnI2HaGjq6/A+vG+cf2kwUi0o+OQ0GHZ0uoaI+W5XtC5
	 Q0a2Oykg2ffMOSEvtjWewwH8JYNxFMNZtt48pw5ifoCtzb9Y4PVzzV/kn1zw0hd7So
	 Sb8mbIr4uFTDWi3jLcKpvEWeh1S2VIk9jQjksmplW+B5kwEjnvbIrcCO/baidXtRHP
	 augQrHeg9m/tapJEmV54wHHWA8CUBdZqtGtI/o2oB29IYnCV0txOrBQz/wssv/B/GK
	 SKfMtb9glG9d/mdpWJ5WCGpT3X0aCjHsObAR4qEpSabMEZ3MDUKhlnCCpJiJtPITQ+
	 OJwIfbcaefSvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50AFC77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 00:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168566436578.25724.769029314512854635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f193d643af76ce6575e0466a6f20f64002d5a41378afe214c947779cf4f7d0ac
Date: Fri, 02 Jun 2023 00:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685664365
