Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467F26127
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 08:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuyau8go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A94C433C9
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697273828;
	bh=9Y8MGipoD+o8y+9La/bMx0Yltg9NiriClBy6AaO/0w8=;
	h=To:Subject:From:Date:From;
	b=iuyau8goazqO7XNPGaZBnAoO3z55HotSwlKYLuW2sqgT+6MJSfVtMOVBjP22N1D1b
	 SMestaw6VKLug74gabyxAxlw0qtMF7umS7e3/V9R5DT4wPWDLxfdBp+4tbikqg+zdF
	 5aTKssPA3HXkaKyUDIQf1QAqckbIoMtT3UpVd5Hz9FpyihoBY0WcXuc2YWoEljFJSE
	 8pbM2LMBXL+IvXoZiTRmv4gZyW0HPnJm3WG9JQ0J97SdFji45ODsjaJ5lNnSeNS8+r
	 5mG5PvkjtJsT13XslvKKT6GRkj0aRaZvOVCAh99pAGohvLbcW8Wi9KHlPIPpU7baVi
	 wpz2vIbsIONhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7655CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169727382867.22806.5980858320213306025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac001067e64edaf7bc261fa707465857323fcce4fada4e828f60a0559624a071
Date: Sat, 14 Oct 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697273828
