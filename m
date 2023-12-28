Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3ECAE575
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzDGrzlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90797C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703775496;
	bh=PECj5InCClFjlJvEZnHI+U3aowi9+hBkvRBhfDVMl2o=;
	h=To:Subject:From:Date:From;
	b=AzDGrzlU4tcu0bJ9yd7XBEmpMNp59WkwYPAe/J0U3Xy9Zpluf4c6m1HLBPZsqb98V
	 cPCurX+aOPyrAC3+ExN58xj2kaTX0HqlptTlasLMhUVIoqmIZ0ZS0G9tTOavK3pJuW
	 OQhVAxl8B3ymjlH6CbkmndQVQr3L6HuD9W3H3VOH5ctcMkfZoB6uKChF/gV4ZE9PRP
	 8DOCNhINSlOHfTznzoIgj7SQp9Phc6YOvhkUrHqG5mfsGntomQOdPAmmLfbJx3Q2MM
	 Y0lZwysNoDPXLPRslGI4x45a4STueIWzr/cXJgI2DlUBykA9hXThKAgKzb8nhN7CcU
	 g2QvtV6xo9GiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7173AC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170377549643.27711.9098083941471204668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f89be256e6b3c8ef90c282723a88fd975e44c6eef71a037147e47cea60aff45
Date: Thu, 28 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703775496
