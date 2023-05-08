Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B715A7
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 00:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FE9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 00:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683507485;
	bh=a4wS0fKd4cIWFlTirieXIswQpfBglgptuCv5Ac1YToo=;
	h=To:Subject:From:Date:From;
	b=nCQC91XNB5RUJ0eN+pmxv6LnIC/oeRAJOPl63VA92KVSRsSk2cxWLS1Emxomx2MsN
	 dG4DkKGRzOcIcbLohw0E/z8LwqLNytU5vIz+jdQJjF4b1j8aIaLWU/zPo8E61CQAK2
	 5y5ucysTNsp48XVGbzQx0sdYBf9+r0STTfEpYi36HW7jvbyuwOjI+bBl8je3ReC078
	 11O0MNeTmHDXzFD6x3JKp+Kukbf5AjWCMWQBeebKjnFG5NkkBiogoXbscuVTu9+L5q
	 t+31FqhOQ0eqfiRkTkKsXu4Tr3CUzilzNm2I0UreM+55vNS2TP0j5fj4v30gyCFelA
	 V9KAGFgOZqJPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BC4C77B7C
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 00:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168350748574.3862.12532470313445335745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212abf8ce1f26250921177ab5d1404fa201b20e51fd1801b4e8b6db9a22aa14b
Date: Mon, 08 May 2023 00:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683507485
