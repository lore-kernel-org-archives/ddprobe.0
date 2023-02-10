Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31833624
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DAFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675993325;
	bh=Y62kBPeLK24VB0jqGicXa2kcmVdeRDL4XNPYwlBgCfU=;
	h=To:Subject:From:Date:From;
	b=JcAD0WkSJ9FtTiLmie+gjml8eOvyot19zrpCBJ6f//YIq6walH7G7RxMmpHNwKFwZ
	 fl+AWWVM+c4IxdJ+wDI+DtBdMQAB98EbKanPBYw1yfyYz52QKO6yEMJ4YR/oL3KsTy
	 Phh5IRE6biJye3MXLLd7nn7Oz33Sr9G8FRP7g2dz8GldzhmY5ZBejTXbGn4eIi6UY0
	 1YuGA5F1PN5h0A6xFqZ9dbK/mdIOdYERjEWWUXGJuRFEbFfNAJNiHCod2TSNCRoZ7j
	 3f4cYtr3srUvzznUOIUrC0IfWaPe+mfPtJSBgYOA6YOInqHFcKhI1w7rDS8EKfRb8/
	 yXOpBlzeKi68g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5253C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167599332573.32226.8457212450623189746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5daab5618e4784e61cb9d1f8a8efee1cb537a04e9f93dbd87c6d473158dccef
Date: Fri, 10 Feb 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675993325
