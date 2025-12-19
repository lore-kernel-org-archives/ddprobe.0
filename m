Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C5C14F112
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766128434; cv=none; b=ERMC3IW3DmeSQ2q5FKltCtFSNnFAUwzFJOGErvTqmLWRgxmBZhY2cOnrjHe22OuiGlLO7uYagHBXcGa3oIVIIcP/hKYzNFa9ilMMI9aZtrsJF5f6w7bSKM/c5G0bLUCuI0bb9pD5PD9M4HDiXZH8i1UipAIUiiAOI7MXdd4Skts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766128434; c=relaxed/simple;
	bh=V1xSKm3ABedkdFIBWrTJwI/qK7fzAw0QAtZ/Fx3irWo=;
	h=To:Subject:From:Message-Id:Date; b=Us5eTTD+D+/neeu1w1wlTolBOEdnlwslpxanXDl5v+B1ZoA3cGuvvha/aq7X9mfnz0OLao1uXZm8wt6DsigoC9sS0NkzAM4hIZZxEBWRz7hcMJGlT1ZPDXMqxSDx5gm7obv+UsnL93bg6THBCY/zY0Zt7oUyOUNnYn4QyKa2Av8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgdbC+cN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgdbC+cN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766128433;
	bh=V1xSKm3ABedkdFIBWrTJwI/qK7fzAw0QAtZ/Fx3irWo=;
	h=To:Subject:From:Date:From;
	b=cgdbC+cNZ7VLgkNXZRmBnhg55XgtGu1uU6ysLjsbUK+PVdXj5pdOa+wTDbPcJ2xy8
	 mmaWyEYx7KXWfFW29Xde9pu422EONIt00mB0UcBgv/AXPdtcI3G5O5PwtSKIPqjm1y
	 h5zuyZy1k8wfc9s88iUJrR5FFQ7eiXiFEkKdYd9p88wlU+67oQemuUE7N8jF4Te3vc
	 iFEQ0gzE48ZNAaa1OckpsbSe/Mi96HkzZ3gZtwX9fPJmpqUhrhj9fuqdwilOgy7tBN
	 Fh+OSoG/pN9qQIk80rXWxsHdbEo6eLm7CHqscw0U5VXCtI0uLimhan6YWrnCOmg518
	 r1A1iyhmnGFrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B12D74964
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612843358.11680.11740513520238856400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f70cc287ab34c517f85c24c644584064c7c58578410cbd25321314ae0fc07b
Date: Fri, 19 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766128433
