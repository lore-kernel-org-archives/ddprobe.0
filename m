Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3DB7E
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 11:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5805C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683458885;
	bh=wPVDmqTsv2G1dzPstxMGTloFXeAqxW+iH2/N0yOQhCU=;
	h=To:Subject:From:Date:From;
	b=emT1okm0x54Af8w27nC+GrKQ45xy7Fvvc8p5IyP/TCiVn53U3gLCq3vLTJBhZ65DC
	 IfxENSr1OMe9Q7ixveJaG4oRf9y3iqfW8ZAUyjWHjsO3xZIIIIErRVjKBYQ/vU++O2
	 Cu/ksF6ZJ1RSAtoayclwgyAUL79ZqWFpDTh0oSSdoy8hgJ2ut3+6tKN1ogPk91TG2Q
	 QKpl0vDyzzRxSfnZtcrL7X4n/KG2/fLBB+y2oAxHBxOr7DMDU9pY7CeLxsh5CRNwYz
	 y+a+dztUljv3PgBgy3KmCv+QMhtcnV5qa5tAD3SCkK7EkhWamWsDySgdm4Q2v6y3+5
	 GollwyWeuUXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F13C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 11:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168345888572.3001.17022159302785659467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f8851c4457ff70dcd3806fa612bb57a581607b57a456a7ed077f7aa753cd4a
Date: Sun, 07 May 2023 11:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683458885
