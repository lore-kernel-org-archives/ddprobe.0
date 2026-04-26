Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0CD2222C5
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777221454; cv=none; b=IRzW45BVUX/L5mS3pOScJ/LTrKPV3T7fPfcelVuRgO1vgwms1Gfx7k5lAC2f/RTW2buCZeMSb+aVl3Sndusk9ZpcwiSpvp3zKVnDQ6nUG3GsH/8g/ByjTcERh1wHlPE/cHKFppCUVi4boJZO2VMUtTY7v9eg5OkLNKPAzF+uj+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777221454; c=relaxed/simple;
	bh=JFpTNGWp4lYN1MAsQ9TjbZs4uXiRdN1lu9Wu7mRWGYA=;
	h=To:Subject:From:Message-Id:Date; b=QrreUnIjMl47htrXnHFhY1uEyNi9ibVdiHHmy4ufeBHXBLqzTZnsF0IF8TB3Sk/B44Bhc0rnjVxjCBOo9YVi3a97pttjt3L7Fot2z3lpkbKcj0rzZhXzkMxDcjBDlpCnhMOeobtoBLJVgsOthSdJLu6VXwBKgQxo26gX/cWzpw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kp2hQwJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kp2hQwJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1825C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777221453;
	bh=JFpTNGWp4lYN1MAsQ9TjbZs4uXiRdN1lu9Wu7mRWGYA=;
	h=To:Subject:From:Date:From;
	b=kp2hQwJgqw7HpAeXErt7C/crrGvt8NN1HuKILv9ZpMy6/82mkSNuHd76clufThqyG
	 T7Kd+3GrOikZaStde8XDA0T6zDctb8f3VvqyZmDKaNgd1hohyVj0Ke24HENJWvGklJ
	 yP4f26nxSl57ma3d2EIN/eK6ebCmS7dvOkI3INfUI/rdNjtJYJ0pYJhWy/eC4t7PJj
	 nCwRCZfHsIDzqBJjBvUMJ0eas7+5cDbnFVkiFZIXrvcEiy1LhkyRky2FbD+gNQp5mL
	 wIlhryrMk8FyIPlfZO3AVqk0LAu8I2hz3j6huJwLKwI5s5IOW6NPr9SlzFj4MIFxvo
	 jOywSa6D7zB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF978FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722145368.9775.3400780727156167041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37a68830aaab0e2f8ceaa24765034156e00143c0b894cd577663a58b2022a05
Date: Sun, 26 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777221453
