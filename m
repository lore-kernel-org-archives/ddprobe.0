Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3DE804
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67869C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661942453;
	bh=zj1u0cmOCdqmgxBwxD/rvKzVazh9RxiUomZGz8Sp28o=;
	h=To:Subject:From:Date:From;
	b=upRHqq4WrA86H4e5A2cok3uydQExUC8QH365GGYM5uh58wym0KD0vspPi7EyGv/9a
	 1PD3RjaZUIk/ifvJeRpDWQraNU2RdMu97qHIGdgeokhgBbyJZzkNOvGNeUEgCLdjuL
	 MV6qCsF02LoyahUP6mcc6Gru0R0r21FiYC2+pt7ySz5Ab0cBgEPj3VTv2GoGVi+h7r
	 ff7zlaxv7AAlcMLlDamqkx3J4swiHVod401eSKhkEoyr2n2EiW8arBPSCRkhmrQESW
	 w0ksQdotTaELd8VjScu2BPggjWzr/9BEmcvRZ12NRGvinSZCdrnY5JARo750UQMG4g
	 ZjvIShGDUHsdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE6CECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194245331.23533.12884703070146421489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64cd5f2794d31c2c56129e11142d56974cf677724de0b9a86031801204124fa
Date: Wed, 31 Aug 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661942453
