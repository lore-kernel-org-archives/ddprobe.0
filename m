Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E806428EA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96729C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672684887;
	bh=OLf5t7qkHtgwR9VeAufmSRIur8mF5qBpoqp5qJv+Mj8=;
	h=To:Subject:From:Date:From;
	b=kbcI0Y8ojtcI7OYGoddRlEXwCUKgbOcV8wOHCqjFn3Qq234kar8AZIlHUku3fIoAP
	 RwR9eoSg9ILhcWhhrzLvl/MxLjN50v/MGaipS5cSZGlNM1cLblUXfVhaHN10yZ2vXF
	 veJet0ip9RK9oHAPHxsspDewzQcC8ONiVUINiej2khi854KhQY09CiS99GiD1gEy/V
	 oD71yE9Xf21Wc7W2TvzsVfkNSpMX6MK/L0rxdL5ypMh7Agw0dST1HuPVuXvzNRpuoH
	 lf9dpAOuxf/lV5uSBZ3VrXpajiOsnFrDC9vmGlaSPcinLJBafx+RhKjX5CK3aqSM+9
	 y2EbEJj+tUiyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654F3C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268488740.2195.3841344348816074919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b62d189136b2a1ac054e607cdbe8b9f58fee6a6a74c0eaaa40079d8e149119
Date: Mon, 02 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672684887
