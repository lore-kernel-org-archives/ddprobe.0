Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D5D2036FF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652394; cv=none; b=Xtri4WizTVQhsWclZ/udf9Kcbu79sKtwTQw7Jk5v2DFWUOZGS/1wTCkjsPKrK1QtOyys3g3yBtIVGH+My72yYXqpuYZmKCf8t6946UqLeaRrtRoUPRyIkf3EtzwtO5w/SqO/PrDsmWfBG0k/7b+LYUBRin1dt9NQh40QHlNHNaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652394; c=relaxed/simple;
	bh=3OV3IC4QvkmvPiwPwF4xsHoMXuH8+ICLMQ/lAqFWh2A=;
	h=To:Subject:From:Message-Id:Date; b=Q0jL/tL3nXvgbIWBF5HQ22HDc/FPjfRREIwBA7VQ7siVNOBiMVvVOZQVVDjXuzWKGLNLxgLWQ8wQ2b65MtSywwUogGk5tyeenB+gkuapLdnfQEqV15lkX2dmhAaOe5/oD6n/fzys0YeHFxWLcs54gSMIIrfdj5pKdCcu/DzOBnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnVZmCTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnVZmCTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0158C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747652393;
	bh=3OV3IC4QvkmvPiwPwF4xsHoMXuH8+ICLMQ/lAqFWh2A=;
	h=To:Subject:From:Date:From;
	b=OnVZmCTnxuJyKX3kChSlp9wo6sWINuLGaiMqZhrIHFGj7uTEFvUvhkxhGK7ob42jC
	 dgJPG4cznHooKzAch7xq3V97og7xd4TJDg2iOxSsR5x+6Q2eU7kMULeQLslyVQhCGa
	 l4zJYeluVq9aug6SVoGGovfndtS0fExM8vg+aqTSibUow0XMncTlrsxXoq6LHYTDO/
	 uYfMZokzCBQQnZr7BXYPMHAOxk8+VBLksTo4mEYhkFWCO0F0wjuXPKvb8nwYW05QQC
	 kmxECvU4icajbvLdV9u5SHTu2+JPxbu43nommENCthSJmk3nL3keefgkoULySc96h5
	 OO3NopLwx2/iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3C1C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765239362.23074.5092673500113225689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6795f84971fb4efbc04b47d7c549406dad3c18f79634da0d113de0d056e0a0ea
Date: Mon, 19 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747652393
