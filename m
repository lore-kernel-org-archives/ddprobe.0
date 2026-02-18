Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F222E30F7FA
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771418094; cv=none; b=aWqcK5sQWaYZH0RjF/GIEeGX2PTiqx4SHrEfOL3Q+kqtkSU2exFfR4eEHWs7LPDS8xAIZBFAoC7dgqh+jWNyzH6CWA4ZPonZpEPEINOUMjcba3IZiEPV8WZJOlL4Y3bKTWCBLFcUoJQ+sh4FK++D7b4HhVXimUp2zLQrE+SaUto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771418094; c=relaxed/simple;
	bh=GYQYLmguOh2nrVBWMGhzi9H3WCciKo69s2JBcWdvvTE=;
	h=To:Subject:From:Message-Id:Date; b=q96jg8VnjaFifWRdyQexs99asE4DbrA4CoFqJTlo2o1t6GRFw5NQ5aGyCyz9yEm7WQRYoMgfQI+S4aYWjwCe3acK6dSYxfCtL2W2Cqom6eC/hCKDNbVUn2yk7a5pjAMYmNx23qYAaH9FkohwAnXBycppsgzYUGGFOpIcGtL94jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMfdhgFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMfdhgFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4874C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771418093;
	bh=GYQYLmguOh2nrVBWMGhzi9H3WCciKo69s2JBcWdvvTE=;
	h=To:Subject:From:Date:From;
	b=WMfdhgFDUcsONK9Ue3++SykA4B9boyjQHE273cPh0bBvM3uu+El9E6I5DrHpBshpI
	 PHgrXBSwJZQTQOTdzwD5iOGQCN3NlSh4tRF++ExNZy+i8ugJHV8pRaX6Q1ApysW52Q
	 lwhpPrQuiJ79MzNLA/FqIwasZVnB/tj59fw/VdWIygmvL0H6xpf5Efj1PdfCkozhWY
	 IKlzUwrr4UfWZBv/dY8a9r31AxHlMfRX5H8s8RUxIR1bqOsXnD7LxXMVrv7rclf4fE
	 XjTfP77Ki3OBQb5kz+zLmwsnT+pmXFLJoWSA+nIKm/yUU4FC3VtMLIFtvYNpCmgxcN
	 dnk8kdjtrqvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CCE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141809359.18896.5686381026048193102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca63ce8b3f91d959da0b223d332f2708265fa9d4cd6bb4ef82bd300dee22458
Date: Wed, 18 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771418093
