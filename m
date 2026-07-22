Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B8143935F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784754574; cv=none; b=JI9bF66HdcKG2HzYUsyKb2A3AqbWuzMtFuLY96BZMIaMRPFtQlh/JT/XeqpsiLal3t1p/P2Y1kK/9hH/g13U1Q91YzeVijYrdfaAfBbNEo1rDC3DkuL2Zq8fzBP4WJ9hgnZtRMwuZZK35d7NNwmAYpNzEJwNIIZKJOh4CckjEe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784754574; c=relaxed/simple;
	bh=9hcMVNtF3STSnFwLZ289Ley+uxIyXqgod3/zcFD1Gg4=;
	h=To:Subject:From:Message-Id:Date; b=Zm9yyMVM/DljLsvz8wqonN6+kXsS6F35jR46JnAfTNlmooT+zknXePg0bQLEezIU/LrsAIPwG5EoBWUagBT1UQbU3J8KUVPV33mjhhue3ZZJ6wAoTUe8WIUssyut1K0fT8lwrIKv4EYAL/TZvoDNpk+NvOb/dj3ExXJpnyPqGuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZKW2YRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZKW2YRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED1E3C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784754574;
	bh=9hcMVNtF3STSnFwLZ289Ley+uxIyXqgod3/zcFD1Gg4=;
	h=To:Subject:From:Date:From;
	b=FZKW2YRzTa5i9EYMjmhbwibVFg29aPBAEXw+r9KaYPu06e8XGoOD3fS5f8OJUAeqr
	 y8E16ETJfeHS0FLkmxw8ZuLEXv7NlgV6pyvLzjApwe1wdVriw2FlpeqaLKooZ/2mZe
	 T0Uz5wv9jI4CH0Rf4D+80VHjVoiLeIjGCCPz5dM8Eca/xrN19RBOfK31mKXQ186+Gk
	 QnIMZDO4QM6Jyq+k5QrG8Ow6JS9WLr9SJU8pJjUO2+sMTMx/k6pQysQYmme/zPfeEs
	 8DzBKfG+TwzOVdvMCQjLWf2/vi/JK1y6NZbN5Ft0DT5dpXRV4RN9LG+ALTaznCBxlJ
	 tOEjtVTG1H6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD23EC4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475457375.8814.15795384278809100465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70efbf20a22848b620f4abeded9afe65fa35493bd0b327147e822c94413d610
Date: Wed, 22 Jul 2026 21:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784754573
