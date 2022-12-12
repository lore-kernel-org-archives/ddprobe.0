Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA74828ED
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D786C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670854287;
	bh=HjLY61gDdNuu/lwKRAoZ+jcaSArSplmtvNMZUJ0QaU0=;
	h=To:Subject:From:Date:From;
	b=gkZB54h5aMP2XOb4DAurmbH55Vq6+ve6RqKGjFQDHJVKWwokbwYDKLwjeZz9DYi1X
	 qaO3Pg9LFyEL7bdUFjZHlZsqXDImwDgpE9Z761HO97YyKy1RASwJQ5k2FmQS3rQqw4
	 Fc78ACgGkTXkgeJuXRcpS5l+GZI+FJxfWmMkBAZu59qHhEEidf+q82c3QIa1O1cZfZ
	 R44Mt4hcCtdMtrLPMeFbDiafFk+CRDZS5N6a9YETNv0GAStpb3FkUzDQFYK+TpeedB
	 DJYS7lVymJyO2bw6fyusYV/GovxppGso/uLJmHKJgvm1il4wvYBtPDa+QIm/fLcbM+
	 JdmHnun4fIXKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613A7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085428739.8386.13088802761838289400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1496a8ef2684aa09d0f8653fcc4b44a39e8be57d7e808c1a506e1c239d703a35
Date: Mon, 12 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670854287
