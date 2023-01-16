Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87F61C07
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A46BC433F0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673865687;
	bh=bA+Is/YGToq8NwWd6X76sYxfs6z5/o1s4CingdXX1pY=;
	h=To:Subject:From:Date:From;
	b=KZwzoVJB8swFldnqRc8Y3vXM7C4aaqCY/zAE4wmkZxaDfFXoprpyNwX6ZBURQ73Sn
	 eLYoRa91fNkIw0NxGHVHyo5B7ks0n9uvGC7DYv1w9kKTwci1EXpd8847vPasPl9gXy
	 jbA+nT+joQSo0/MkKNoSjzQ81lgZJfqu65wRaF5hZZgUnG04ze1W+JI6/qbX1QUeSQ
	 O2jixqRGXohxVEG8DVZpSKBP9vCyLJV0LhZCy+D6aXzp8v6A50SimMG3DjTDK5Kos6
	 NR+ywMSZhpj5bhArjaJdEEcT/HK61AQ2n4VRRB44KEuVmriRpdCUao8vhpIWh2HUXo
	 E8jOeEKSwAqqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE80C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167386568743.13244.6731686287550287643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2df6a76b0aa47376547582255ba9a2d64942aadbe74286c514a2dee0ee43aa
Date: Mon, 16 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673865687
