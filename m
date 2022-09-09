Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFED808
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC82C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662726053;
	bh=fkDuUXfWImLZ7Qg0BB3mp+YOzPiFkphz7ooq5FyuUkI=;
	h=To:Subject:From:Date:From;
	b=ZqWB8NLwgMcTTYhPC1C80XXUohMI41N6XZe8FCgdvzmWh8fbwvsNSVT9XwBKCt8c3
	 qnqNwUYCjSWD7RUg2pkHeEKwUNGHnUYlrTIOWlA+Js98jhph9K+WFgu2LjrLapflFL
	 A8roVDlvi5XcQFRk7oA+1EOgtEtRGl09Y7nvYl89gtQjoLBT5mAAY18qXX48rF3MSK
	 NyRx8PIVb7cn067xFAsXXnKIB3BniFjJ2xIMszrU9OqLaRkP57X8Z3CWMOrCC/b/TM
	 8SOzolSsPIL6F3qa2am3OOqUAmnEaSvNJTdKbEtj8CtvKLaA28FO7mt2KSerxgsBr0
	 tZpD0VdaRFalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52424ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272605332.20770.15345556357685410158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0a95f29cff11fa80889dace1af53fd14ebca18062df78e985f77edeec47877
Date: Fri, 09 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662726053
