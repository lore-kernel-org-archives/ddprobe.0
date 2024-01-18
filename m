Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9703172E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705611497; cv=none; b=sTuIX5Fw65EeRqmoslLfmYw3PbAwM6qxMXsaIlkVDDuqNbSs3Nq3o+rH7KWjuVv+Krsw6SZZcUPIp9gYXyCU9MDSH2zPDKcnNjwyYJ4dsAwxx7ZNzhGu5QoeGC1lEpsQ3/glDEwNI1yUjmLvJKps6y25UWTdueOWG0On+qtthag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705611497; c=relaxed/simple;
	bh=iOPB0Gw6FKJRQ+fb0dg0eU+newFp7yQxNvKrknODMfk=;
	h=To:Subject:From:Message-Id:Date; b=GQBlt3ewylv9Y6CCa5vnsFHvXSovBRcPVm3KY2vwZCg4pOSEciTrqvvnlOtuPYwRNi00rQz0uTsKHEEGZOPnE51RRmDClfQmwAKDZH+jnVhHABqPPtF4RaWSILtnTBhvhVZ+FYgb/l/Og1R+84Wd7oBJJqAlFpM6o7NxIwCMvW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y92sHTyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y92sHTyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789FDC433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705611496;
	bh=iOPB0Gw6FKJRQ+fb0dg0eU+newFp7yQxNvKrknODMfk=;
	h=To:Subject:From:Date:From;
	b=Y92sHTyAF/0P4ZxSiEvMt8QzJfFY+FL5JRoUiS9U6/No3qcFP4OwcFhP6CHIWddjM
	 mlzFs/8SoeL1fU/WELk34y0qVVSdte/yGf9yDwkMWskU87cgX2bx6id9c+GR0NauP7
	 YP2/81ZLepNe721BrTpdoUqFT+ARHu8F0L5OrSpDNWBws4ZjROXNnjY4W2KKId3iYQ
	 iqix8m4+0MNLe0983eQUJWrGytMZ/wlp3Yt32UnSSqySPL2gtk//zOTEqizaJ5yNcX
	 x2Q/fsQwvqo2tK1hiqBptG3o3jALKSfD3Et6it8Hl9Dbm5g0TEDHcwUm3bICttLrpJ
	 GrtSfcWl+IcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8B9C47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170561149636.16853.11941429516699037624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1628d8d05d7d8669ec998284a28704a903d243248fe56d9c8213ee70773b28d
Date: Thu, 18 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705611496
