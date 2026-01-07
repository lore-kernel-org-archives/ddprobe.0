Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F46F322B63
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767794036; cv=none; b=XT7odhFLXr1YAjpfdlQbSkUOgmhA19H5cL6tAjhIP9eBoc39HZITLuxKy+xnGqimh42C/yW2jynvZDBoLW6sRasxc3xOW+ysQwhfGV1DgWwydJk3afi2AYP277Aj2ihg5wgQif5MDDsniRMReEszT16X1Ua9nmTK8Vb+owEjvdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767794036; c=relaxed/simple;
	bh=L6CDdTa/UEBSwIp3FaGO8bCk8kwTeGpmVpNBHMuci2Q=;
	h=To:Subject:From:Message-Id:Date; b=k+f1kIjxt72ptceS6VuSYx0FZFFt8KeRCkuBcWkXQ1YW7zvou5t95W0ywhlMVLfWJkNabv0LVvHZpIkIKQGTTheZYbkNj2trGxHmSOmoEv7c17CokPqGIh7o4r+dkFpZ7tqTWvUoP+TdjEFJFfXg7IIq3Oc9ochMkkQh8ke+LcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JX2fLk2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JX2fLk2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B503CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767794033;
	bh=L6CDdTa/UEBSwIp3FaGO8bCk8kwTeGpmVpNBHMuci2Q=;
	h=To:Subject:From:Date:From;
	b=JX2fLk2PLcT0MEmHkjb3VPtxhDPVe6abOnIT74zIYEJFfIGcS1e9wS054TjA8+kFI
	 zPxJlhF38crf+6L4q+RKOCSCPyN2/vnaeQKAmgtCEYGmE5yBxX7IETvfxlCYPmYIDN
	 JApN5zb6WtPuVM9SMD58OMEsaZyi3SKqddugMBTXuRA1UwsbokH3qDAU/QV5H4W2XH
	 ywG1VFGlFtRLZNg9NnFc4+8bbLJHr93cgMnRp5jvXmQyDG0DkToCkUccnDdOWfH3hC
	 JLYdwsHCP/MHv8LSIuVUHwPkdIuBHeWgcO0wTnBTi17zjJTkiSE2Tv2RP3U4XlvEpj
	 vUzHMZrB5qNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25B6CFD63C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779403365.25004.3278468971527620391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43f39adbea719951bfdb96e48930984c682163896f0e5ae443adee765dfcdd9
Date: Wed, 07 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767794033
