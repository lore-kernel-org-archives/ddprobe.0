Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70261156C6
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 12:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19305C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 12:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683289026;
	bh=dHNjAyKrdwCzuWVPzPZ0gUtgTArbv4wzya/0GE3Yl7I=;
	h=To:Subject:From:Date:From;
	b=JM8v6XCLutaEKwzUPAkIiYVfWlnCGIuLZdLjePLtG/2NFjzCS90SX/8afEIZtq71m
	 +Iz7PqUkwDs8F4gqPrdqVOoTttGZ2/nrXH64vSGVYHEMtya349tilrXy0x3iGl2APC
	 D0XOEWDNQ0ChEDO5L9S8rmpxdME2mIq2/vd30YDRaH0HVZQbunjfgt1eiPQPUu9Pfu
	 XHQEKPEvRd0YDBRPLN4WMpkqKYFtaFzyeYORl5XFFYzDu1N/kBZtcQIHjsYNUxZe9k
	 esJtCaj9hMzDQ9zw86aSBHymVZmrAgKKttYzcysYNlGVYFNfgasCYm+RnLrlXrBaQa
	 jPUdqU1mOnBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD19BC77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 12:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168328902589.32403.3061105859752610241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458188eae3f31bced4e14ed93cf01a6b25fab39b3930289ab94c2db4e8d1af89
Date: Fri, 05 May 2023 12:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683289025
