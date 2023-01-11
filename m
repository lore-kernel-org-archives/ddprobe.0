Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE88E17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C2FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673417487;
	bh=KsYc3MWMxhcCQh44j8cErlb+MSp8hd8sD9+DOjTezbY=;
	h=To:Subject:From:Date:From;
	b=DN+NiXtowwPs8Uj8WYcZ0GDPlkDzSceVyKZ3r5+zbg9hXsvH5MVepNiEdWKL8XwAZ
	 dOmR308YUTK/EFXBz1FhgaAv7od6hqoDMNCYhE8QlRb6sdKzsPhQmrIZMeaXnBhEl2
	 Bkbx7ATN4VBJKNNNw16JbhLkTWaZMHFDdtXCXm1zLA3m/tZ/rOPJ8zIG2tL5h5xOMS
	 M6yKyW5KzUsssTo3VVVoehGJC7n0oPiynGi5uLWemKZKZi83soMcpdhazlaALY/mHh
	 Et1eReuadGybqCBF+nzgj5+PmmABPzrW5xSQ0Fc6YMR/gyl659Tw0PLvUcl+cGijCd
	 MHRizKhTh3heA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65237C54EBE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341748740.12407.4004448490187401108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8b3827c73e3c46dcb2d4b8b420e037d40b01a1673e413e7dbed2d7eccdaefa
Date: Wed, 11 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673417487
