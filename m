Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A0A7B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83287C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666935054;
	bh=0XZt9lHKya9XL8uTAtZP+13Cmm+FJGIHY+Mt99Er6O8=;
	h=To:Subject:From:Date:From;
	b=Ksxk5SiUOFTaqWA3djCL2mxiRBO+ELcbfNGdFiXeeHgAiExG3MuBjOBTaDkghJlUs
	 cFPYBKGwM+j66N4D7rEQsbjqLspshylcQ8k3KNaCkoo5ZKpWHGKco6HgWUBj/04ym1
	 Rt8qchNUwaTpLrXKQysjK6Mr55XIHAgghAuJBPpc1H7/NLyLftxeJEm+QNk9lWL/ej
	 gkBOdQ16NKFS93pm5Xtj5ajrIgQy40QJtfDgn9T6sGY12HxGmrp8tbyiFBHZakMhMl
	 vH94967o8aBx2YcjwHhffr3rF/AQcupj8b2dyXMxs9JEFokU5PAd2UYvg8+MlWvq1y
	 p884vpz1ADT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A22C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693505438.7077.7911932106380125940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578e6edabd56f1586379514c67865be937b852d7c720e57f050cc0390521266a
Date: Fri, 28 Oct 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666935054
