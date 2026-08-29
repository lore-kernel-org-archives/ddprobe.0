Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6DDBA3D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788008434; cv=none; b=hDgRLjzjSl7iuVRPHLujjkKbCpi0sb4u+hAty/PEZE6WdnJAJV1tO2fTmdAzkjum9XLM7XhyCWANKQIYcaN50PUsfxPZ+gY22/QMNt9nYId+Neoj3RbzB6K0dCrAZowCIxgDVWsjjamtVlvkYJc0ttA7l51/f6ZzSU54IYt+xXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788008434; c=relaxed/simple;
	bh=OnWv8NsEBlfC1ndKrb7kDL6TVBdEsn2A+THo9KmaQWE=;
	h=To:Subject:From:Message-Id:Date; b=eWv2SXS01B+Di2/KxPNl27RSPCD9UhZzClfjlAOKadSnzcnABGvgn836SZARr5f7xscGwiDErzuVdj6fE6ylxbb+RuDxVa433PEpnJIbbgJedtiXRvU3/7aSFVgQzWwgEb+aOChGOaGr8CYJA2jkn2OGbC/ApKO8cw5XyGCe6Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suLffVwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suLffVwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6AFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788008433;
	bh=OnWv8NsEBlfC1ndKrb7kDL6TVBdEsn2A+THo9KmaQWE=;
	h=To:Subject:From:Date:From;
	b=suLffVwZnK4Jdsf4YkwMzM+vRqpNGZwNuseOUFf64cmTsmC0l1D6qnSNkE2Mv7aU4
	 cphUi9uZS5HmTMvsu6A8wggFQih5IivpQKHKvJmj+KRC8pc6IZ7/qbmlqmSjWZp5t3
	 mXzO8r0mUX17BDSVQrv2ee7msYOBI5dLlzkrF//Y4dPc3f8JoIGpW3GiX7JT4z4wbt
	 NatPCvgYD2C0tTWkRw2nfOwq95ZHsZmpnEsEvt6KSRc3ex5sFp+9cK/zFdyfxVemSL
	 HIGhxYlnWJ7F+aK/pNJlQBQWaGNNJKeWWuxO1iHgzkQLYjCh6rZX63G0IynGj/EGfp
	 jsCgVPj8eo7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C9C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800843368.22535.3038536004637379913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7480797d7b72e6644fba04ef68edd87d12713711f4bd3ef4ef5486e0d6c7e4c
Date: Sat, 29 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788008433
