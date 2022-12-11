Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC9A1FCA
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E85C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670768487;
	bh=2ssKIDt4FWSmviDgXcrLceuQwnlqxXiM20FrBm7XOBU=;
	h=To:Subject:From:Date:From;
	b=LjOaUY9S4cw+nwEOt92/29cfvtEwT0lj/n0WZeueYs8u91nfdQaFI6Gjxizon/2Y2
	 3SBVtM/V+v4spqM6UjNy1nzcpsWixSr1KJV7+cbdnjgl+gfyzdqEL/qdETCQpNJ3Yo
	 4XHj/6yW1HoeFjKSrtF6KlfJj9USib8Qz4JmX+QjsjiDQjoIdOaRstmhdlAXO5VNY/
	 KDk7ETpDHqi6Oiy87947WdyPmhC8KT0Q8LJ/I17rIIwacRMgzukw6jqfsxXyQUbvWW
	 Z4+8Gbr86nLgsSk0kbHiS/OdFYqWyq2LkzYbetO6Ljdki7nABADfgx2vYs18CBsHPE
	 C7u0hjl/L177Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653A2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076848739.11694.15891917095959220491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42487db900e222180acc787f3a1a3d6633b873b32540eeeaebab63a3d0a2c972
Date: Sun, 11 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670768487
