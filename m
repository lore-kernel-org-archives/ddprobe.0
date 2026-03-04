Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287433890F3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772610894; cv=none; b=LOGFwbNhjDi5wvf6FPxAxjD7HixNuJhftDZKP06TFjJZT9XoMQPiFbQ/sVxNnnKekPwMIiP4aNHky0CXPEBUDlB29KQv4FnvxkArGvoXEF1VBf3i6zyN52xRwzF8kf/HgQmVWvqrfsONvTdUNNxeDXrDFqhAhf1jL5BPtNdaPRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772610894; c=relaxed/simple;
	bh=8zgpDwYL+AhBd1ukGti+DldIAup9v0JuNj1cIslem/g=;
	h=To:Subject:From:Message-Id:Date; b=Ltbijgo/5tEd4OaX9h6LPVLqSfM0dLFUAJXq0+G2kAKt14LIm5nMZg60EnAK9WFErJ/fr38au1oWv3vBPhzHc87GRrLj78N3Pdx2/j8P6BrpptJWWqoG3nF5dQWwqY5P0UN41SOt7CJS+c9in1Q3SNbYfO6yvlx64+ab6XAxivo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij16MQxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij16MQxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EC4C19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772610893;
	bh=8zgpDwYL+AhBd1ukGti+DldIAup9v0JuNj1cIslem/g=;
	h=To:Subject:From:Date:From;
	b=Ij16MQxh/UvgDwYdXK5hoc1IqT3v8tl6kOvfJsJXrtAOvT2E3gAQDVK+LdX7muU8L
	 M+dzx+xfKtGty7pIEB0MLv2mmDITBfwiAIkcyBMcV+qjzajOfp7xeaom4sBlA0rB8V
	 HcUPWYrdnqxAsDzsWSxrzJ67CfSPdzRJsc2Wb2zZdpK7grGCJTASg/lR8UyJOWxtcD
	 wvnPTU2eT5gqHxm+Yb1jjqYdvRLTSEfNtN57kVZh/G1pXTVBM3R1rbnm71fIR9OaeS
	 eL8iXLlcr9JisvRpJFcsrCwL8j96uqDsDwwAIG2AUUTqoJgwxJeLL6QBqhr+kN1u2r
	 z1HGAAHgrK8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8DAEDEC1E
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261089363.10077.2018902994314381578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bf4ebc82fdd03498386c8a3654a2610ead62097d815b6461d59beafb0ede89
Date: Wed, 04 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772610893
