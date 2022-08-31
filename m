Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED3E613B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73550C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661984453;
	bh=/rBGH81A7Q+psB29+TBN4qqIOlZ1i3qxW8lfUYpukTs=;
	h=To:Subject:From:Date:From;
	b=BrST5MNtbnCVt2sjxUjsmfgqiF7NfY/imsvx4xRAJhWxQ2+huswgaGAZinWvyHCz6
	 ddcHjfERWZijLNOHH+xmLsKUXySyWy/O5qVJenT8cuQ91yjivxJoQC04Tmf+Nq4mEu
	 qLXNZyxUcZWYLKCovQVBKncW2gqvvf2cKeRdfHm4nhE35Pfyn/BSx9IOsD0aAD63dO
	 6u0TGBE9rmH8VfmWo6LsVmpDwsUAEih2RsI6FisYECz4HozmL0xXTzvonwMAuwsikc
	 yAPBqg+loieNoqJXtlKXOWO7hKlkYa/8s+NbchNmjJ5GMfi25wxCKFjXWBpGphMKiC
	 2rTF+4BatoXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56897ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198445333.16577.13274004103285650809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae64c96cd94cec6e965b726a67e4f6a67065bc5a327e8fd40d3a3e5cc5cf5cd
Date: Wed, 31 Aug 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661984453
