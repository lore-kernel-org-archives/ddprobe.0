Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE4E28695
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760960994; cv=none; b=XMipRDWn+wpwvSJMkUeQ93yMlbaR4H4l2sbHiXtoy1VVaTNNmUsuWiUVjBgIvsZ9MgqiSrm2mRqAbyrsaupe2c4hwhkPT05HIusmfNohgLAl4H5otrTZhnf4jNzoqN/OwBbEXYrm3HeZWA2lPgj2ZscwFOQ55uE4UoXW/wSuLb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760960994; c=relaxed/simple;
	bh=FTG0cVEQnK56ez8NGGWQr7eX6rJccj99/B53yYSSSDw=;
	h=To:Subject:From:Message-Id:Date; b=AWo2tZfoEAwqCgr3lqkjHOGqcGNWj1KZXyUi156oB7b6l+XWLedzL1AVTa49lFvVKbzsf/PPl1CGyPLgV5lEeKZpd7v+j6RFhEZBIGx7KBBhGkjv+PCsH8G73izd4OV6l1MG9K/U2XLWy+vklk+YcLTSR1EcnvI7WSh/nOPCgrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK0fHOJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK0fHOJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2510C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760960993;
	bh=FTG0cVEQnK56ez8NGGWQr7eX6rJccj99/B53yYSSSDw=;
	h=To:Subject:From:Date:From;
	b=XK0fHOJnIHclLrQzeya+RP1D1RVXLubVUULhy8Pj8GnHOpidynHcVU+gw0fbZLMaf
	 /2dmIEsv8bbBfh09bho4TkgFXKS8Oz56VTrQA2t1eUZcU6QF+CyJBfyGJMLCfZibg9
	 oqmbe8lRk0TsqOlp8+xau5Db7IYQ88RNLYbEjdf5GMD+8+f7yrOv1ABKa8FJyN3KBq
	 lX4iq3s/AKtagF7pNwKGtEOhjYZwGVaqFhC6Gc/u2zXf4974MdPRYqHU60MQ+7WmIf
	 sEn9fjYkGIqPMPkYp8hAU8AbsnIDRF9gNDdv1pLbvjcXMfxWltEvv/TYtLIzUC1c+F
	 MIMxT3wlTuJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDDCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096099358.11702.17066703471747661827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942b1133cc7900dd77c01deefc067a53f74adfb022d858310bee64d6aa037550
Date: Mon, 20 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760960993
