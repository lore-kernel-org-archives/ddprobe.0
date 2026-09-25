Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6834D796A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790353834; cv=none; b=OaWwDZ/TiE4kQntRHCAxU9hsoo93WUkMbwMa9/LD/08l6v2Iz2Iv4aT/siR/LkxomOLpYZdmirl27Sjd0WpKYGjwh+ntchB/G3IDbmLsHzxZZyTkuXKRzknGlYl7GEVYWWYbj52Tfp0f1cdWkEUTvFNdIflN9Ng/vDJitB4KjGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790353834; c=relaxed/simple;
	bh=RZb86RJdO0DsnuCnKg9y7Z/OzrEJav5fwyS637CZd9M=;
	h=To:Subject:From:Message-Id:Date; b=D2vp/2+rKWU3c8uegAr4Hq6eD9LynC+Ef+A6aNk0XpQYRtwOAQ0Bieu4eUBRXSo4FvHk9woVfxSbHR0C0/jodwfxcU3m7QbSVW1zq85KvI8gRGln6+yiERUZFN4DYnQrWXJIWw+7jvO2Ju6AqOjm7hV9UHgRfJykmbDM87LJ2AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaRabmzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaRabmzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDD7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790353833;
	bh=RZb86RJdO0DsnuCnKg9y7Z/OzrEJav5fwyS637CZd9M=;
	h=To:Subject:From:Date:From;
	b=XaRabmzhxjoT5H4IQ31aJPfd4uiSvvERYZvZyUaxIbUgb531C6ls55HpPLa4CpNb4
	 d8aR9O3dq1xUK4L8GPDNdc8lNkRkcGMxZ787hjU6xFkzuLED2l2diMHa2qXS8Sehq/
	 vL4nAGadsrnSTOT79U5aVJkbzvBtiirOo+7SFR27Ps2y4e+fx5VNlR8kn46P7yxqPF
	 N3T9W9haHA4hYZDCFfv9ef2e6MY0d8ZAYQUi4RTBiu0xO3xSAER7bJMPHRkrnR4XHg
	 W1OI+cHsZFGLVW1km4siSp2xehOyAsrAGA8EPlYO+KtXeI/WBZD3MD8bWv2Bm9mP7n
	 gNPD/XrPetIJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF7EC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035383368.12725.6589950030446319402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd358427ddb010d02cc1dc91dbb149bc62d939b09482779a585cac16a7423ce
Date: Fri, 25 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790353833
