Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBA8239570
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766291634; cv=none; b=qWgwxfdiY2nbunLHHPTz5GpY3PKPfjRk6152Jwr23MOzRlb0fsdfv0EZUxa526GdFrYac7HfYnXoAlsGLgHkOdcquVlbBoUObAHp+t3WH7QTpQItEHKpTIrUHk3pp6u7e0lsZ1IaQxWe34HALFgXq2kgkebmrLZs9q6aehGEHLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766291634; c=relaxed/simple;
	bh=SJcR+AQdCYxKZLRdX1zO5WS5xPLG4ynLcQb++HFY5Xk=;
	h=To:Subject:From:Message-Id:Date; b=i8PxnZNrE/DmDs5cs2P/pVGVfcIH2E735yQTXvD7r5tna+M8DtoSr5SQYT5zA2eoGIADsPkPTTqDe46yvattS2goEXN0SRAtnJBxna36aYk2D+BdL14Rs0eyvLZgbhsJEGtr8nFOGZxsTx/vqp/CmJEDpX84kdxZUfB/2XkFgzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7NrRzX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7NrRzX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A131EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766291633;
	bh=SJcR+AQdCYxKZLRdX1zO5WS5xPLG4ynLcQb++HFY5Xk=;
	h=To:Subject:From:Date:From;
	b=I7NrRzX8aOtAMXHpZ61ZAcxMkLa11e9zRcUpuLQ51tgEZhACjX30yek2qju0eQXHR
	 ytjMZgUXU5FM/cQTcBsm8RpwY9FIFKnhQOWu/2fS7Pw7lhGVPisCxVFmzpPWAo02Ta
	 aut8xfSOji8/d+i/I8XYYeStvYvmybnHEmU5XBH4fsr8kDs1zZ1/g87tyQmYETUfct
	 MFRiUmcsJipouGFAe8lFycBBPJBAdL5bh+2R/ldtBlxrM3suzPYSY2tdMtkp9QHZ1u
	 ifsOV0NRbM34HXMoBoJU1NVkfic5WF3vUSAa1IpVhwp9vBmdqIIAKKXmDAuOtF9uMn
	 YFi2rhJ2jUOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3AE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629163358.23675.17183119890033127529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7f9698bb2a1863f49bc8ab4cddf2d85aeb7542be3880f6b75400045f03f700
Date: Sun, 21 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766291633
