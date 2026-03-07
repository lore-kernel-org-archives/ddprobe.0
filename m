Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E00186E58
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772895893; cv=none; b=d3jjfpELRXs2WWDyj0eyVx++gtaBvXfsEltjb0HSZk26gNgFdGlAY9ZPOqQVZdcMf+RXGXT28xCF8zB3QoW088W9JlXCtkV18uyZvKhmjmZWbwGI24IB9teQe1y70bko8Y1mzh3dnGg0lU4oS3FmXeGwzKXgmseB0nwgDsGRQl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772895893; c=relaxed/simple;
	bh=3nhbc+IlXUmkml6qbAmnQPhw5PH4p2a49rGmBTKP8kU=;
	h=To:Subject:From:Message-Id:Date; b=N9BnGYTw+G1uYdnuNGaVwrjugKpu9fJX7pUmT0tdf/Bc7xcHoFAdJSbTj+gH0lO1fSoN0DYwUxaX5lAOx3h2C7vmtK71JGNuqIykoqGFsdnZwxZu4mevjYRBCJOz9KyIJqEXitUVT6nv04bBeiCuMt6o8qoKy5P2wAcj18whG+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8uIoApb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8uIoApb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC4C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772895893;
	bh=3nhbc+IlXUmkml6qbAmnQPhw5PH4p2a49rGmBTKP8kU=;
	h=To:Subject:From:Date:From;
	b=o8uIoApbDd7s0AhPoYp0GdKePJi+mcKOKam1E5rYDtB+Z3OPsUlHRBlxM5PdSYFXh
	 VfWOCMN08PJLzTDGQLE3ky8MoPW7gQLr92MhaIJ/XeVoeGmDjGPS9Kh/CYsHMPFzdO
	 1ufrGXSTe6KkCVYw+Wh6suO8M55udlVI3Xo5A0Ikn09rOSvTf0AayO25zUugBfPEGS
	 C/NQeuB/kYjwJXvOK5VsYxj42+hrdhrZNno7XXfDxGOVTz6/tKhMDHxGmt8hR6JDlB
	 071vxLTrUXyGaPwCc4/Ev6u1M13TFzxjwXNAMkstpe2P9Bd5y0+9Ra7ZZ3oNyl6aD1
	 nejsq7OruYQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97241F513ED
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289589360.21576.118165472791358000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc2f11034e8c1a1d31259ab8506bd2fe373e71378752b7370c57d193e596c94
Date: Sat, 07 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772895893
