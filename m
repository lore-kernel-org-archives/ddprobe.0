Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F32185E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76939C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668081054;
	bh=2yxlQvPrRNHA+HL6kfY+uV3wedn3Ql5id0G3YOG72TM=;
	h=To:Subject:From:Date:From;
	b=fLBYdsnjYH3bxmscP5bP0g0fzzW8kzY8Iclxp+2XwbqfecQ5/O8IlCWQuh+ZWdYXk
	 JPfVArK3RNDaBmPvxSudGNVS5OOLBdg52bmPJDYhXTysr8sWgYkKIzRRdb7Y05JZKs
	 4JcoTvte7fR3jdPCUN/PmLzP80lO96T8lF1Vjh7U9i6IcLjo+dtJVkg09QHamS55aB
	 w0gqSyJLLKV8siWad337n2uSifbjAH6d8gLxaplz9sd0QAh1V0RXH3Bh8zjclgQ6Tx
	 m71ECNiZbN5JlJg70yWIArKV0WFQ53za2UmegbwEvdbskVMs5mTU3NSmfKOtVPIkgR
	 rmJe4JLC6zRKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C66C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166808105434.11958.5025287587104693277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8929bd174ecd3e3f2d33f4691e90fee73c8cbb1e305fa4ada735e519655751e
Date: Thu, 10 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668081054
