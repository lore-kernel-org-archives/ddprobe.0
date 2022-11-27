Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C961933C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCC2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669563654;
	bh=s/LPu9cNZSqiJMDa3MUFcKNs7nWvrdk1Lap9waj5+0E=;
	h=To:Subject:From:Date:From;
	b=WeoMa6hBRo8gft9zJXBVq26/2q7f4LcQY21xBHD79RkZypffBgAGdG2lkTknDltwg
	 bmB+TscK8V8Nu6jhjUS/yMsR88gEXBx4TvpMYKzdujjLpsyI155uQmwIYvgPWVzqOQ
	 8ZGv1TWZWWJa406NETzpNkPhYK5uUFksrEODURWZ8D5vPyqTUQUgawXAKg7x31u9ZU
	 kYpM/vhlk5F5rHNAqd/vDqnZs2lKZwSPKLNUdsr/ek6GZAFWvE6YHO1SVcSbrAsDRS
	 QVrQSH6ULDQjDekGmtgnkDHVYG3VzSmQIi3KG6WA2ZlCgONCdchLOlrtyxlcKHkIWl
	 9PPdEKE7o7ZKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540CFC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956365432.19118.3610779633888535671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c2ad8543ba246c1a750957119b04882ea5636f09141ee29405aeb6835fdba0
Date: Sun, 27 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669563654
