Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263E6ED0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjNPe8f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8703BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698025696;
	bh=u/JsEeaJXcKZTzDHAzG1QjVaazXQ13e02larL6UxhHk=;
	h=To:Subject:From:Date:From;
	b=qjNPe8f4Qk8wyzu9tzKdJ0mNMhrPXKlibVmd+1CuPXHT26flJPZu3dtJyq6vjjfe7
	 pcoSp/wgGoFDBx+VHeh+VxjFHuAoRz/uoUf8uV0/VlgMwadzqvGoJjwWVySM/WpZGk
	 5BBCkd+dlqgFF1xV0Cf/GokXwVBsmjqtTGYtRDhIdxrgOKdlQ9CYwJ2qRsK2F15393
	 UKqoDCK8oXEwudC4l14cpr8R2XdF4kefDu4yWXx1r+j4vlIvfr1H65x4W8hGJmlFSw
	 Yn8BelPUSYe205BUYPo02i+HQqVVlBZ9KvuJ9bJj/7WV5V3FXB/wVJE3J/W0ViTzMw
	 U8dE1uTrZKeOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C6ECDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169802569640.22713.7605594670777343759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d543f8a0bd9ccb0da7bb10e9371491ae174d9622ae32e4a21c3294395f4ec97
Date: Mon, 23 Oct 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698025696
