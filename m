Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3BB2CAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E28C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670591487;
	bh=DYxPgZWGdc3lP/t2txBv0Ruc1bYsAB1IH0YhpOx54yo=;
	h=To:Subject:From:Date:From;
	b=KRI4jNQoSPYdodWCblTXbqSTU6eDAdzXL6Zhg3h7rlqUYlLiLGyO9JQdp4Jh3EGQc
	 osdMnhkEV2kKIa0jXDyapO1wQ8rjBKuwc5sEQAqpJe0FUesm/CMlQ/MEQaSjZZATWL
	 JiXBGScXSrhXE3QWgYZpzaEzoY2HkhttNNb2PHG4U1N9dBWNpjvzG8scRUhpOzajMX
	 7Nu/kkT6PmBzK64dtLSiWD76myW3mJo0mkYnAcK5Mg9I3JDj0MQo1OBaApQQgSJRhf
	 KTA/l5CPwp0OKeV+Pdt3+dIwZ8eqU4xe6hppCBtc7coC3oUeyFeNz5AxHyVbqD+VHN
	 L6hRb14G+YpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B7BC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059148740.25127.3216484586749235141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63b4ea10054197fb732937887fda2570bb585fd5c709e1a3e2c6540ddba1ac0
Date: Fri, 09 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670591487
