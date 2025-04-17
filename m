Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D0E41C63
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744922394; cv=none; b=IRL4a1cSPOdal891K+qRzvWF/RE7JdWLF+IOWlYB7Ze7xrVYujmgyG+BFJt7lBvzwGcR4zd3GPxfFK3lmPxBe3YmsdGUKimjugL+y1g4dkcUaYluQr+wQQ7Qmdes9ViwiswozFpwvk7NZ4Zg5lmZXR3oxQA2C3buM0uWTlcj0X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744922394; c=relaxed/simple;
	bh=55O2N/gqZEegUuMw2huJs+I1W80LTF0MOU/8h3e3MpQ=;
	h=To:Subject:From:Message-Id:Date; b=e+LWF7xWakwdQnmL/I0UEK4Nt+iyI3EinQlGtdaxm3KAnITzKeA3IaflP9xDlif7HaDd3Zwyw4SXB9Vybbnrpm3Iv0QWvvijvPDHJVWs08TU+U1fJPnsPXE6eSfplxA2D6us+0v0kZ57miI1/30sGNN71SxFDtTIwm2Qy5eyG5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdXdga0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdXdga0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9F1C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744922393;
	bh=55O2N/gqZEegUuMw2huJs+I1W80LTF0MOU/8h3e3MpQ=;
	h=To:Subject:From:Date:From;
	b=SdXdga0XAEvVfNRbCehZ6yV4utmNc8f7P89fmjK7RRJ7a4Q6clZlzQlcysKLhFWsL
	 ez5wKgsU7SrUamOKR73R/YF8rAMMVb9w2DaXlUBrPqbS0ASXViY6kWmggeWFedlb5n
	 IJcMnT7ha2O4ItJX/q1jGVZt9fyb4M5+oEKNAdE0kcSxeLHy+y2Vigd36V0rCh+f+6
	 FtKnRLpqGYG/T8kU2vli9xjnwxbI1MdnRsvGHx1I9A8KC1uCaABq1XL+opC3Mcr217
	 bM0RXQQUWI6pfmPd5NCuN3ZzJckkbBKzkFEuz4Qluve2rFV9wC4xtJvKfe/dWG9e3/
	 tl1PLTu9fqEfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C89C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492239369.5773.12190535736736327025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce23bfa10ae587097bea75f3cd4ff9fff2550eaf05f55d046520e9445289680
Date: Thu, 17 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744922393
