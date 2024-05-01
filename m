Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A6D1BDCF
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714531943; cv=none; b=tNmC+aqGEEXoxfhiwPFjkpuqhGqEuQrk80n2AfOY4/O1i7Y9+h54luyHDqNbTWNTBzkEa8jR6BG3Bkvf6MxAk/R4iQojDFsLh/rOUsUD3m80qAXqq3V3lVO9t4QmmpUCy5SnAQ5VCr3IVGQkaXbppAJ8dAJgNk/evcuefD6sBj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714531943; c=relaxed/simple;
	bh=A2CGPRQA3BP8QO7/n5F2BoTZk5wwBmjgg+xR5YzUlCg=;
	h=To:Subject:From:Message-Id:Date; b=akPGfuIh2hfRAmIj9FQUC40f6gC9jhwyyfQfo59yY89pPbxpqnA+aL4qIaAWbRFf6uIVAgR8gnN8JTOcTpI8nSr5wBDJNUeb7XCCIgcQXNAkydgw6V6SO0vqaiZWXWFToYcx4W5YQJL4dFldBf4I2RtKP732NVd5ljnymH74hP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq2iDIJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq2iDIJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFF3C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714531942;
	bh=A2CGPRQA3BP8QO7/n5F2BoTZk5wwBmjgg+xR5YzUlCg=;
	h=To:Subject:From:Date:From;
	b=Dq2iDIJXw1LhQNcBDe1YGgCMW2ODP+YRIWgxGizPtd8HRpoXk1tweskSedwObsoi+
	 mUUD4OcYkArsIQDmI9IF66HFshYQ0IEPOKivUUkHn2mdb5kRGAl7P/WmscfggMPTp9
	 axloqM6MPg7FLO+SCgfaXXYzPriqWp9sAxNgyk14VJ20b65K9GPh1MzrU9qGo/A0D5
	 I4r35n1Ys2O6ymxVdLY4hRarxK76ku4dryPr31y1/T8JtgzdvRTFUWQO+4e6/diTI8
	 mXqGOg4hsSverhaMEinIoLL6Q8ziQ5e2nWP8mQFRmoa8Ozmg6PogVsf2OWxciFtkh9
	 COh7nBpUaRjXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF753C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453194277.17872.2396413572564554884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70db98536d95123d034ec3576cecb13bdb2ec5222ff66c1a93481e1cb339dab2
Date: Wed, 01 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714531942
