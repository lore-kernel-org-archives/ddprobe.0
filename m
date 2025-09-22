Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBDF20FAA4
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758551394; cv=none; b=fZP0EwbcUodAX3g830eVxjgkuvuHozw162EO2dwUQVJ1EkK0TvjdCMSffcAeQBjCaKWCZXvOtAWuqwBAFMnlP79IAZZioB7vbc0H7Nfq7qG9fd+Zww+adgypEEusr/4xJUMv+BL+3savbzoqPya2FAAlI5c3iPOHa+SPuZQqC3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758551394; c=relaxed/simple;
	bh=Z+n+SKwclcvKbQz66u9FMAPKQtMYoYC3ErUwCIoLpP4=;
	h=To:Subject:From:Message-Id:Date; b=WLkoz07XQXR/xJiSJUt5cTVBIPdMoOLQ/+NqqAmbXD7F4Bom2JFtvvMtjP+h6UhD/Nz8ZOuUY7iNpSXjVfDHOwXRokxtTRxvbZnTT4tSJ5lZnQjEEr5eGkWCVuixZK1fBjg4QmBP5SAOW58VEmNaNj3mtkzYU0Qtxh8/kwEtu3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkKr/svd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkKr/svd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB1C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758551393;
	bh=Z+n+SKwclcvKbQz66u9FMAPKQtMYoYC3ErUwCIoLpP4=;
	h=To:Subject:From:Date:From;
	b=kkKr/svdICeaI/gQqZ4rz/gbbnE+tWn/+YZxdT/T4nDjONVtCMq8I7ltWoxgF2r/w
	 o99BI0ETD+ZFrWoi6drh65DtR5RtMM9WwZ4yNURBnnLMqUy9XKFoAMJIY9KtkwtW4z
	 TcF1704JAJSPAJxti8hcljDhMaS/Q+K1gCOCQ6jPQt5j9Nm8H5Bof1W+Rihi3Wyz+r
	 edxAb9O12XmYMlpivfKuZdOCg2OHgsfyIafKZkFMzYbYccVlewnBsWFj5RvhEED2t3
	 10tx5Qt6+ykEMV7kBMOZrWZeLeFfLrrBFAdUMdiLDw+UeWFRfDxcUsj4atDyvg3OzU
	 DBboVq6GnT1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D0BCAC5A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855139360.24288.4330592029376657860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92186911c3e263219ff789562782935543fcfd718e3214f8e26739761230c26b
Date: Mon, 22 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758551393
