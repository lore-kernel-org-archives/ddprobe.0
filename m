Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1301D12B61
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEiPfTxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D33C433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704615496;
	bh=3ifbthvReHXY2JazAO9V6gIoIM8TIL/m0Xfb9+Zwy8c=;
	h=To:Subject:From:Date:From;
	b=dEiPfTxHDVSFH7U4RKpG9faRrzNYkpF3wi5Dbfq5pn6FckXBJZtVZVHm3KlFsQDaQ
	 s0HDZVou6fuTzybWmdvYda9FmQzDImFpVfzSVMJ2bpkdwtFvnSKRtijMKncLS1foUn
	 CzCWEXe+e/y8G7cNaXHf/KOLMvHGGtgq1FgZ7qfQh6F4YCTwZRij2ucWhmfHV3y7tb
	 2BTMlI226kfgo+jRg9HHQyGY5PdfjKNlirnA7yF4xdo5XO4h4TcVBjQHHOTTxtlix3
	 gJ0eQIODizf0Qj2WjmPLQoJH/OuS9zu3yfCTpbZXZvjAwMH/d4m7ezkN51eiCRextf
	 3OLCbQiMX1XNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649A7C47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170461549637.1152.11918665616853088217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55670d728c5808134067a5c42442de2c6d8c5720f49919331e2810470786fb7d
Date: Sun, 07 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704615496
