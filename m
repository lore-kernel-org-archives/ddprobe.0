Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C48210D
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 07:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A760FC4339E
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671088287;
	bh=w5YZMdQKifc4zoKxCDqJztTGQtCPlPlpq9qDKq08mdI=;
	h=To:Subject:From:Date:From;
	b=c5RlkAvGjHDOkLD6PJ3mfyXm9XOAc+GeONW2vwD5MBwJF4ldu250xmL8bjc9SXITC
	 wvVyzgXFuuUppypmjGYt/Dr+MAyA1UER9vuyRc6A7130XNErcwdRxzaF3Tt628tWpc
	 Hh3PGJbPHQ0OGHPD05XlGhuykclEBRfHZCGQ9wWOyYRVu9eimnpR/42cw3BYq2LxXo
	 2f1shcmVKZD83nmJP6frLot6up5DR39kVMr0E6s9Wqs7SVaG2OoAsTo5uUEIRjpd3L
	 igyKT4+5HBRasL4gE05J8QbnlsfkuDx1IBlwuQ2AnpMjXj3UAFmFzevMAiRFZerGRQ
	 bl0a2Z4TAdhbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60625C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108828738.4684.2254730023272890152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7984cfc1d978c929f6d4586beb352046b4665f5c33dc5659f95ab809a7e5dc5
Date: Thu, 15 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671088287
