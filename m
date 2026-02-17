Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5BC37B3F9
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771372494; cv=none; b=Pr0yOx4W65pHgZ0+icclgF96FxQBFp/iKdaGX2CK+xfbnwYfctMSuovwqjttSMlcHbuIZhZOrZghFTRwVyNzlA50fDlSbVzkfKUWAcMFePwwgb7RGsWARiH9aHi+6Vg4CBvxunIu8g2drMpXv1sX8Ci9IfX1Rkqttd2/HCdhVDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771372494; c=relaxed/simple;
	bh=4/YfV9+Rw65sr0SA2Y5+JxIx58swHu+BL9GnXKPSnpc=;
	h=To:Subject:From:Message-Id:Date; b=IPL9NTd+gv1KvTEUy0U2q/Ef8HSF51SG1xk0lIAkymrQxuxakUK4QEzNe8YneeAju68htnqtDUgQA7HsGcqF9xRgIQ7M3idCgcfXdkXU6TnUw38RNqsHoH+uLjujqM9AT0+kvq8lizmeRgt+9vHRtrBg8vY3f1am4LXNDfagmjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAJm5huB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAJm5huB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17E7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771372493;
	bh=4/YfV9+Rw65sr0SA2Y5+JxIx58swHu+BL9GnXKPSnpc=;
	h=To:Subject:From:Date:From;
	b=XAJm5huBOJGymwkIuOeOgITTFS8mff3zRl2e62i0ZfkME5LYGTMjHGoau4Tym6lPr
	 faPngrOc1EqidC7soyJlF2JlVC2NioHMYAy/20TwgsiIYYIAxyRWQQEls0nO2R0tto
	 Pov+k6WMizL4i2BS6XmTbz4yungtKjdiPpMj59Pl51vWl3KXb1KhHsqsDxuMXFIj3w
	 aaNDruJr9CZ/nnJKeNqR5cUP7Ymdj0WMb+gvs8dJwll8rUkcNurCl4XFQ16CNEvk19
	 X3w/VWGg0Vj3bHUYOoDPGnyp+MO85Jno4rOExsrh8DSc5w2pAIDJHsS+9kd9NTO88M
	 hjyTfHLHoItUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23F7E9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137249363.1680.5992355569847612706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707a5af876c428a7cb31841a75c0f08018b5da58f44a1323808276e3353485a4
Date: Tue, 17 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771372493
