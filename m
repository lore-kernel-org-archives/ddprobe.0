Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F8E46B81
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8UFnZFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA1CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701199096;
	bh=QP8KXZdH8mIloKeWCPVZpRu29LIRkxFWZcIF0/IJeAc=;
	h=To:Subject:From:Date:From;
	b=C8UFnZFm4cJFIaSQEqtUhxZu3+eVZRftA5W1KTxiCPEqA1cxvg1DCEQWlwFRXlAaI
	 vPfd+KTUCsVxfw+qrKEi4hRypOOMbeVTLFn3PFI+Y8ICiRKkCnG2hnC8nEDOrvEkQc
	 No2ja8KsPTFlmH3H2bNx54FfMEcW4St0yYUNK6mA9Quv5P5xoUP41DFnZ78Q5wmvhr
	 dzp1h1ULEvyKeJObKcbSDMEzlsVEwmJbthypvnoimDSsn5W4BcKrE4C4RmitUMwZX0
	 oRfKduBYNkp79KQWaN9Cgy2Gi2wjeD6sv86fX9nBI5l09rw7+ywyEAlVrOgaIJSXjv
	 1fJqdDF2tPXog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BD5C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170119909640.21978.10555177407145274817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4dbe3f9615c90df64973012201556644047d08ec3caff0ac5111e7587b888c
Date: Tue, 28 Nov 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701199096
