Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D60363C69
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780066354; cv=none; b=TzUIroPIjOCQJEPYMVlQX3N75kJlAUTXg+GRCL7spC+csTPRw/r7qxY4tvVBNP8iMwQK4nuUl+YaE6/xKTwLJZQuW7/iI3/UGxScq41D0ylwzRF+T1Q7e2W1/CvUULbYYawjJx5/+oVKMG7hCFBoTjKE43K6QnFyHLqweHmfmcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780066354; c=relaxed/simple;
	bh=kLtFLr21UO0+MCeot+Wwl3o9xLPT8IP2Skzeyd7UXto=;
	h=To:Subject:From:Message-Id:Date; b=Ufvhxpxcr4C1T+Ag+MqZh2IrPNf4GuHl/cbQ/bL1px+6K20r2YO7ZIfnakyE3dK+xZUSp1ECdhxzC6Xw9dgjud0EGf/j6B+cPAqPzYkZH2rJUo391+PZ4R4/bRFVCb66sXY9uFW1O0//Z6T/bDxOsnuDzV6ZHOZt29SLgT1sHH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCkB9zk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCkB9zk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B48C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780066353;
	bh=kLtFLr21UO0+MCeot+Wwl3o9xLPT8IP2Skzeyd7UXto=;
	h=To:Subject:From:Date:From;
	b=gCkB9zk5ZotyasDqkMS7KhjYnO5SlCQd4GbnAd6kLsXWS6pX/FdAybGCN4USy4wW9
	 AnEmhnD9Fry8mo5WZAGguAD7IwYtk355HnH9i9ZhpJpH9Bt1wBFTaH681rAN6IxXv0
	 vb1ZN2YyCL0IKAQcwfQ3lfdBhSB26Khmx01or5pszHTM8BSlcHbIMBLxjE1qLuYCk7
	 05zVCTRFQISJfZggzu6YnrDacdjhBoQI3F/2xNqZ7Rq6T3aGcfRML438OJaIje/Zt7
	 yOMD8Yq//sKcJLDmZBWxWFWdvofblSdSEKJV2cRXBLbmX2cnJSjOyh+jX93bupEfSZ
	 a/VrIjzKKb98Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25C4CD6E50
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006635377.32550.6861021718611446845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad59688dce0133f4194b000a7e80bed64eb4b81fd620eb53777c7b225c82eb4f
Date: Fri, 29 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780066353
