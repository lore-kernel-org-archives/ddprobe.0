Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B7533E3
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 09:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA176C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 09:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679564345;
	bh=hkud5Tpny84HTI2mbR5V/q04Z/n55HBSlOQvfUiBKYA=;
	h=To:Subject:From:Date:From;
	b=jg4KJJEo8eBgs5MojvPX1CZBth17Ut7yqQ8it5GBxbFJfM1gEB9Azg5P+ouK2q98T
	 4vucRNA6MEBRObOELcf9/U3hV1oyAVfxX8bwqHLAKiwejr9dRJ8NzWafI0e8KIUhfb
	 2Ybvl3FXI8AcCiuVAJiq2Ys9I/E8PDGQEo6E/bLduaUpIVYsJDrn0QQQY7JaiR59Wi
	 zZ6q0F1f8X3U8uxFjD5qbTevS8AU6mouwFrr9rYAHw0egi1+IpJGQJKYBZeF7hCVuB
	 2tQFNI8Z0BdWWa0AQCpUrfcOPqT8Nv3L8h0VjR/TySC2Xd9tuz1A3z/vI30J18nVwr
	 Ll770vrWt42DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5B6C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 09:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167956434574.31615.15178296600326671680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4dc6ace22b200e66bfdc3ea2398a4f469f990600ccbedce8aa4f1c0c7b81bca
Date: Thu, 23 Mar 2023 09:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679564345
