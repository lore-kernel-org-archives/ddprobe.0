Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56C0322A
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DCDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666556453;
	bh=blz/pXpA/soLw6xS9hJPPK/EJYo00fsQssXMR2BmIpo=;
	h=To:Subject:From:Date:From;
	b=IiUVC90MxwpVVGtcVzly30gbCbe8T9JNT9BgtlUQp1k7GTsFESdOFf0/Tfu9daWUA
	 SJjljpy+MmeKjPzLVu+zZsKa0NtjKim7/GFwpe5NYp5piNSBC2UfVuNssIh0YfIyPn
	 d3feoYjC2oTeZZDAy10gJAGTVoJNIgNZG1VRF+n+sd9OG1DMi33DjLi7Rj9/NK2AZ0
	 3mjyyBu5YpeZk25BxTzJZC3SlNNJvG+bgx2JcJ8X5YHk3OOQQv2NRxwZMOp5azuNBE
	 TfXRjwMNesgmxIc15ibJWKcvR6pq4D+B+s8YLc9QPn6lPzBP57Rle7cNp6s/fIu6Jc
	 Q0GDH+mN+ky/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F69C3A59D
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166655645332.4182.17202946555422997984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67332d1a52a02899b5c43d4b754eed6a93a6a95ca8dd12e613f27e6f5893aec
Date: Sun, 23 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666556453
