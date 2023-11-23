Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1D1BA34
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtvROXuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E09C433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700718496;
	bh=/zOK9wNpK1sfUXh6wOKvoxo89SM+hPo0r4/cBpzb5Wc=;
	h=To:Subject:From:Date:From;
	b=XtvROXuy2bpvs9B8HFOFfwO2I4Yj+90eIOaHX/7p/cAWpuNBh1LzAmnbYxzAfMgSh
	 GIsuoPPz0Yk6ZA/W4IrVourQRZhv9gWXqIVv2K0UXlB8mXsZ5oIgWbci4Q2ihhWcNq
	 oCQDJeXVKWiG6z0C58FX76Sn9BDqnRhOuT/Bylsb1RMzMzFdfNXUH1+ISG/ib/BdAN
	 k/XPF4a8+niafuJhj+dSL7YudpvqC+LKj9tuvh2JNQENYzABG7OP/gQAMsE5kkHzNj
	 8wtYud9rZLp5JYiBYlyofeOEyqpMe2DuF8iAh0OCka5YPXz9wA9PJTOH2lPN/jSp4v
	 ZWu5hLso2aiJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6507BC5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170071849640.21636.4337583092446897412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11063cb5af9332e3d407fa2bc014483c3f6a574dcf446f575b49c14d1ce76273
Date: Thu, 23 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700718496
