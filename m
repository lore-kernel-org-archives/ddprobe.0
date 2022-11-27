Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA682F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76193C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669588854;
	bh=tTaWV50EPx8jtFtW79rfUYo443LOxmMWM8w5Ow0/OIE=;
	h=To:Subject:From:Date:From;
	b=DKN/FmzKgKg7ncN4RW6Mo0vykl9HTEWv7hJbDVp/5taIF7NO4s3q14cP7CtUqmG7t
	 y12BkYpn+4rccuO+czqgAITXBOyVMyCC8XQG9p7g07lbUuUlKbp12zZvTgaJ9gf+WI
	 UIQbPupdvdHDOWH5I5gRycqibDQXfTZxO2t8vE0EidONG99I6vqgPXFTzznQUfwEN9
	 S/Wlni4ro86lkT3H1ac2PHOkQERcqakuBdQgck3tyrd2F+YhrjDa59r4QzI2nmIRK0
	 DcYQ/bNvrgqyvM+a4p3V/cSbY5tfaYxjOEKp3B9OHkQZsrXqJcYBgfc6Agm9+m6VJC
	 3CU9gJKjSmG4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B40C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958885433.12495.12684093068129361362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4414e5f40f632c42448ef8844c645a8ab40f17620ad7393acd781a957fbbed
Date: Sun, 27 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669588854
