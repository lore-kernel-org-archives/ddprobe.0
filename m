Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A13323E
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 21:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE72C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 21:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695416708;
	bh=SXr7mw/hCCXtX2YGxP25qHtD0Bp0zioBwaBBHO96hXM=;
	h=To:Subject:From:Date:From;
	b=XXruFO+sMXwWe54i8L6wLW90xL4BReJKaB62hlO1pGr9bF7jopITvp2R09+IvnRh9
	 NJJnUYLgoM6FpXnxrytH5yHtYGmvTkGPMnW5pICtZrHXH23ABozuKP9eITny28JM6w
	 qu3pcunXs8ep80yfqQsD/ohDA8YbgAxoV/SLdAFjAYADwZaGSPMWQTwuAP3PmlZI4D
	 HHOIICH6FPjPv4f3wEMUxV3zEtr1u6LuA6/xY3o8/Ew5AAp2vWWtJfcxqqXk+IZ4F3
	 +SfgUOYzfQX/FdmrQYFBdRqxb0BdgaQe2rumUsYR+RQv+Tg7sqSQPLavjtZkSbe5K4
	 qcSQKCmOPQsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26C7CE7A81
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 21:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169541670871.30125.14489504943983999814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1620a7a6b7bdaa5ffeb2696a23dcd6a8edbd01942ee390ca2dbbc55ec08ca82d
Date: Fri, 22 Sep 2023 21:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695416708
