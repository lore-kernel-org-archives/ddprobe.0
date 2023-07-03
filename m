Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754E27E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C536FC433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688364968;
	bh=W5eLb1/USUQyjmlbSbtsiMrhXg5f7mvr3D0WrduIJ3I=;
	h=To:Subject:From:Date:From;
	b=l/Nhpck233/jFGcut+iHLqWdJGnj5a1YkLkhC+78Km36Gp9aoLKGAsJomQW6p8aLm
	 BbTFg6mq2BlA9SJ7MBIysgYcYYYGZAeo/A14qr52UfsCFndnYwTrtWnV4FLA3GB5HL
	 GDDmfdAyNuW0DQ+i2TmHSG3dBuYR7vuc2qfTtzCmeT4dpRPAXclD1vy2OYExBFpZkK
	 lrxCQwcj6Abksk5r/tkKXuXorbzlhd97otS3cwHeclHExDNvbEDiFQQppkgOUM1+tg
	 s9XCaJpJXgUjt+y9HQHccOEnlFvp7SfLMGbljjOneEYurnIpVOHgRVG5pWqFnCTB+0
	 EY7X0MeRJdcMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5CBEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 06:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836496868.5489.6460523264306965192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1355943fb926424f30185165432daeee129845eef05868bf7865ec14cc7502
Date: Mon, 03 Jul 2023 06:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688364968
