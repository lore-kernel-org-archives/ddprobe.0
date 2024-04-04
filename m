Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FF9367
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712204897; cv=none; b=q/FV5P7bCF0TNUJnhzk5KoEPwnRKFavkL9eglrbkT/3qBH6+e7cwq81PNzXCcIzO7cfUQcm6050uZrfPmL763sSOfK/+nYDqrWbf3bKi4FGvg2DVA6JaDy6cG2TVRrbsepbTCXzFAg4eYj3nRG5SQHjPcuvgi5DIHkSgCyfmb1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712204897; c=relaxed/simple;
	bh=gl1SomSDTodeYj/B4QTTbcP9Ae3JiN7TxVfLUlYeOc0=;
	h=To:Subject:From:Message-Id:Date; b=HShUSap3X1wQ34CaQbb3oF+nkgBCn+CvBaeZMSreaMp+e7xAmDPjCCIMLuotZbzUKkszw7vq/VyMH116Nz2UDxlla6BW+DzuSwMKxM+wnhAye2XOTndzUDVP1+/ywoPepZI8IBMkqpTdFN57ejvCEMcJL8VggXy9UMXoyKZsNM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHaXEv/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHaXEv/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B1EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712204896;
	bh=gl1SomSDTodeYj/B4QTTbcP9Ae3JiN7TxVfLUlYeOc0=;
	h=To:Subject:From:Date:From;
	b=XHaXEv/f9Rp+8q7jFAOZ2YJVuSDw95kiBKoEtJtc09FQ83Y2QYDvsDMuSUCFgQUAe
	 Q+0t15Hb9/nrqC2SMqI/bCzb31FAYMmzwyEHNMSA2wP/eRhzwWibtTjY1qsu/Mlkfb
	 kPeYXwbFzdbpH+fr/EXTNaEthy4wUjs5xdFQV/2YbxBR/x53fnYsk2bHBE0G0o2DUT
	 i0Emn3SMSSnPNQGfv15uDJAc122t7Vdv+tctTrJsyCU1tjWQ5VfD3tWc52ZmFQrIYo
	 M6PSWbQxKTXhuelalut6DKOI7Y+WbbxM3BO3H8a0H1lXrw9nByiYRT/Ygk2YwmaiVJ
	 xILnnsJuipuww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E1E9CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171220489644.29444.5076890874221472307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270e3ac34ca953a8a2a989843d26fa41f433bbfea75333095a5fbc1e0015fc66
Date: Thu, 04 Apr 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712204896
