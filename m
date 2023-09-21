Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525CC23B8
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 15:55:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A25C4E776
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 15:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695311709;
	bh=TEscxn0VXAPVilTY+aTxXYswEFNrxGdBKNweQhLcbPY=;
	h=To:Subject:From:Date:From;
	b=Kam10U6NqMu0FZNZFoI8qXQEu9EMJ7Wybocm9K03YqUvAqVnQMOvtwENi04tQb7PZ
	 covj1H0e/ZHkKPyH3P3fIOUNzQU9hmgAVfJHOSkVDIbE6XrB8Ov4EpV1oai1hwNIz5
	 CoFQV+46uChbxqCkE2dEVaLzf/S4zFzlmtjM9tiBKQlCBZh9MoO9QG3cdDH8Av9eXo
	 TEGf7We8AZn3hYFT6UD2xoYai6HmG+SfR0MRcWC0Gj+C1GcicE32Z02hr6U687TBLC
	 IvQF1yZd+UatkaqNuC+9z0LdM2oe5Vo/9dsrisvwEZCZ7yKivqiUm+j0mAErGOQek0
	 vMEJSxbqtMWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0B8E71090
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 15:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169531170870.12011.13683249650066455731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126ab578ecc52d7f8357aff73388eed65a3ce20a7d577943b835e6013f38624a
Date: Thu, 21 Sep 2023 15:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695311708
