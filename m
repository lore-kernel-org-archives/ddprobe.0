Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A83379
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBCEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679708465;
	bh=AjgP7uj9wT7WPeRdshEeiQGHTpMOw/5sWAXU1ePVwRQ=;
	h=To:Subject:From:Date:From;
	b=Pk/Oz7vprQ6UAjLXsSI3eITfkeV4Ke2KQD9MjVpISCZXTR97NW1rxSOYhWirDJxwZ
	 zkihxn5xCpxCvdgvSI2tVwety2PoLWIIVdEofqUJfJo8RFrMz0LoZQ+x7Ha2SQeEJT
	 GiRzt2nw3/5vaYWX9UoHADqZtfgcWBOWMO9c744ZtMc8kzlD3+dyYCQE+waXKX0es6
	 gGzJXGZjH0fR9FD+25Xmqojo/wxQMy5lPUwtDXAK4klXAeXbRKgXIZ2wxFxmBtGqj4
	 K0ySjOBM8dile2iZQtjrfdCw2UJQewF3+KjXwFLnhaJ4lsC+fUidtNwwpiTaHkFxT3
	 LdxJEfWYvCPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F4FC76195
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 01:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167970846579.16747.12108978011514935038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c0046f1bf593c79ffd61ed206d46286abe806d0ffdcbd73bea74476bc10804
Date: Sat, 25 Mar 2023 01:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679708465
