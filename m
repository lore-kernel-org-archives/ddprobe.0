Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DACB7E6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8347C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687899188;
	bh=QC83D+Os9AqEfp2IJuLu27tIBg+mKS3xNooEdf8cAK8=;
	h=To:Subject:From:Date:From;
	b=Xq3c73HdyBR5KeBzXEJfyQeBguCYlA7glwUlGP3KaSDBuVVZU6iVvnr9dJ2XHJtki
	 hZ+HxL1Qngrg2OfiMroZ4ixeJn8WcBQIRFrOuynnv2SEw1a7nHeKN5lmyxg/O/hmDG
	 4EnwPYA6074bXbr0ProYg/BqN37A9U8wqrBdH5P1+MV6ut7JJyM+H6FEywF5T83XXi
	 LG/NCbB0H/HjTXMYxm67K+/rGuSucF43NZ8/0X/KKJVmUKz5sU3CZlIZrSsRNhSybD
	 pfhHelbSQBr5KL0kaEplz0NftzZbw12shB6Ai4FKRmyWw9cR92HkDrBhMLeuXddikM
	 s3xcNFj30wyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF4AEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789918876.24822.7096478530637292811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83c5da5fd0aacaa080f7715c3a056aed3c6955604dd95c64c3ae4d1113bb5bc
Date: Tue, 27 Jun 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687899188
