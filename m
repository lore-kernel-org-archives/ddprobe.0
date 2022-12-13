Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5C0748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89EA9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670955087;
	bh=ODTU1jGWUiO9zYfsiQlIL38+mR/1MmdfuyCIHAD/oCc=;
	h=To:Subject:From:Date:From;
	b=gihatoQ9ep6D4tItqCQYfmagbQB3IzLOb+9R53XwU4egLlwVv58gHulk9ZKzAQVco
	 rE/06DG8q3WyzO/qrq6aqr6A857iRx9bMOz1uy3hyMNVQOLi0fEIpuIxcvZzLL9jmG
	 pirZ3I3yZfBhGIsQxZGoyVoFDl33sntpO9S6X5Kir0yOvK6wA1klEjX6huBHZNl5kK
	 oK0XeASuPqBm9VjcHfMbps9nmi/lVyLpHo5ZJdTYIuliiq5F9peNs3UryY1OJYmOb8
	 fM8jW5sLBWWaDr8Qt1RqtMI16neiooWwb/QahRr6vvKVip6u0fVGuKW3ZyG21fJjoB
	 iWvOFfiWtszwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB18C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095508744.10574.5814364342620063526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a91e72e294010c513926d9e5206103fef87799cf1f6e87605299a235c0da0b
Date: Tue, 13 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670955087
