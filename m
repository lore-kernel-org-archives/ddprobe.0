Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2892517D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF12BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674205925;
	bh=oANpnxRRCEPgLxpkNAsPMOJ7YCdNWdyP2oxJDxQH5Wo=;
	h=To:Subject:From:Date:From;
	b=W80vxUcMQ4jl9pagDHFhIdcxMQnRLePW5C6OwJx613psFtI16NsVHKNUcu/zmv1cV
	 RrP8ObN6DQt10kB9t8oPClGXD9IWk0CtlzWoM4o0GCGx3c0fb+Bnf+fRSA+NCeYVi7
	 3lvjDlQkTKQ4eWVWrMW6yRSTrS93ARBtGVqBtHhZF2AeXHkFaULCGR5a8ShAslGrZ7
	 hbMAexjS/HmCh5ylBKDESkvI1hNM6lqW4H+W5o6sxJCqaY2QEpueuvwLIr111xEzlG
	 QGoIQxw5ZLxX2hTecMvPPu434GttkhbLxcuQ+YsrRxiD/Gk6t8bhlR8f9qOJakvRGe
	 t/qn+XhylMquw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C6DC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420592574.13404.11545369262608821170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0932676c58bbd95a407253d18403f53f4491cafc29f4fcbd938472dca23a044
Date: Fri, 20 Jan 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674205925
