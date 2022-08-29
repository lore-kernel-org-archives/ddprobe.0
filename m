Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA0B17C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AF0C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661734852;
	bh=9S+RnQXWmF2A4UxAlSG8YXaLTr20hnW/gABQ97YTKx4=;
	h=To:Subject:From:Date:From;
	b=mDh9ht3tus7ox78sbC29wwEj2KudkfJ7kT0r0WLUZDet1USMjMtcjWbkI8KgJi5g/
	 0JNS5AfzHAgcrV/aKOqTvSP4f2hlVxsuZSHsVKcAr9CxgNzf9cJryl1TvUA0rbdT5y
	 ASx3JCI7kRfn/LGThOt1I/v/+tgIY3KpMwNwKdwVasejVXtAPP+v1BeoDM2O219qeY
	 knfBFSwqSpHAQ68eXSXW2SNue1pVPtxD9fIHRo7pBpyUwJJF3OCFe6Mw+chWKeQcxq
	 junyzke3qVarvOT4GN/0OS+kG12qt4tzp/hFzaJY9tXw2hSHbD86iaSXs/CFeODzJP
	 rvMy2IpISh45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B316ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173485235.32374.6477774025427685555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7ec42e20fac0c334f93ebf8988f926f9bbe60a02ede0c7feba2838227b84f5
Date: Mon, 29 Aug 2022 01:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661734852
