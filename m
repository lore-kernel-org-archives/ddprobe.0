Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A60820EE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 14:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F97C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 14:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690728128;
	bh=f/F9GZU0PFwhcLyXFSDmSVvqiBiInpYUm8LTXxE4AZ8=;
	h=To:Subject:From:Date:From;
	b=rexSP7GumL01GSPzScC8cIyDXPGhTe6mGRe+IpWO4ELGF48kV+erh/86b5jUaYvgc
	 JGuEsQY2T79chUv26J083sAIKTvZ60SYAJRPHD6zJ7mPbP5QN2eQAUdIvQeywc2QdB
	 0IRzGmXAhlkXv2qFmLKc6BGfy9Q2q/cuTqkqJ6vZTM0PpdTLVyip73bYammtBDp6eq
	 7OnckhIAxZjUBe4PPfQggpsO9qWlH9p6Z0wd6MhlQ5kNEO8F6UzvUwNQCVW7ljw6Uy
	 fjAO5CL+8Er7Q1ODrJhyJBRYjBZRBh8TMLULdvFcRAMblZ+KL8azZICCOFXJDzB6B4
	 vYqczHy4l/1Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC772C001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 14:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169072812867.16743.6657891715822525577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a96eaaf9d7aea697b8e04d9fdb30db89f209ec270c44cb108d760b31c684ec
Date: Sun, 30 Jul 2023 14:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690728128
