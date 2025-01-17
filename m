Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD0325A62F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737141954; cv=none; b=F55SC6hx8YtA3tK9s7fGZcbKKzF4gZVCsnASTENj/OOwpOpSHNn3Q+Mu1PaQrhHhUfep5q124pa2dA9X9Ce+bx22VkZULhDDE9ejXJYG4krMBRFLdjX0llkXdy8xgG5xCUXus4SdJM/fDlfi3GlypLWmWFRsIxSsb9VGQMNK9g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737141954; c=relaxed/simple;
	bh=b1+yocJxbTGyYqmK58zKtpx7U5Kf6o5yckIUrKJEGW0=;
	h=To:Subject:From:Message-Id:Date; b=JD4blOjglUSE82xTnxAfL6KZ1m35PGGFUpsN/XUQ8iZwsaFNmpdl9HhzyaDPwwyuA/FWHB2QTXiEVcHauFPK8n0kT5haBEinLF70heDZrkMpdTy4oGoepJ74UA14iRZA5h+68V2y0/XKv/i0hTa0vJ/ZSLK3hOhYzyL/OQfFDi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hINc/m44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hINc/m44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E77C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737141953;
	bh=b1+yocJxbTGyYqmK58zKtpx7U5Kf6o5yckIUrKJEGW0=;
	h=To:Subject:From:Date:From;
	b=hINc/m44oNDbyGdWsaXsPuJw6WL0TnPWtWB6UAEyp3vXnWk9EwgGgp6h54ltWT+8Q
	 sgHlmfPmBRvLVaiD21d2rp4tq0Oc9LCeu8nrKiRNj5tbSoXU+iR50zRnu9lS3XZgD8
	 TD+CfF42CNAQSka50DjVdlO/+w8wdTIDUDYx0xb0I5GVLOzFUlauMBgkbFfz4/Z/6l
	 zwYodqFTrZdmkSrSVPLkIDhMxJTaaYg5/xadXtp1K6uyYqtFz45bK+PtM69LyB5I2F
	 5WPmTVNfZFzMATmnxw34HV4IgzdFYmnVTwtkGf6BX7HhtC0oItk8MW1N5r9fewI3KM
	 Fo5plZ3OYMSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF8C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714195358.7666.14682250325815606170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b6add2f3576485e74682e6aa9971630af8735dee126513045769f2c354851e
Date: Fri, 17 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737141953
