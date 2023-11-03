Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDE618621
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEZFmbzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F700C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699018096;
	bh=0K+77a0zqpwBXnNp43FMWxlSbSybf0CbFFTl+MXPiOo=;
	h=To:Subject:From:Date:From;
	b=cEZFmbzgXc/oJBfpaSmudEWKKXT7zbNgtneAvvYdMMm63z4DJkM/3Z5HLlvXITr2A
	 p1mkgGH0of/z6upUyQQ1osd+rStJ/9BTLl+Zhui1ob2073zeVivE8MWQgof+Q+Yfel
	 Wa1emw+uJB1RMA//6H5F5ygc3cpBQpbiu2lHM1KEpT7PbJ2wFLHukbhN9kDyZgOtxh
	 Dn//WWbQRyOLXfJfKhzujD1iWwwSXSJhVfB0RH0kBNtAWVRRu28E6qqq2GQo2fNXi6
	 sUpRRZABv2qWrGGxWYedWZr5Usq+RQdtff6nZhnChvS84YGaeHRzoIDP68grLaZeEX
	 IlzeWqRhEK9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BFABC001B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169901809649.9926.14834862649230627283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413e813fb7b7e85995dd0a5e7717d8ab71349857a06ccdbb721802181931f695
Date: Fri, 03 Nov 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699018096
