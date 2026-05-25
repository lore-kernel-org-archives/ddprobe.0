Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD4F37DE80
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779707554; cv=none; b=OYCUJpCD/ZWFj7iiLCt33jZP4Z9GI50EUcIX7OEmKkr3jj/DWikfMzpoYCTopHWcsVHMwlMB4Zw9I1caVUXSybbBTw2FnXY23YlHKA/7IFsevQG2aZoputN1ZxCc1DAYm7SZIvDrK/0AjUZmfCP9x53Zvq/839TCaruWBfFXB98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779707554; c=relaxed/simple;
	bh=+Z8hKjmz5N476IOcCsdBKKLwtC5j8V1s9/i7dDFLZ7Q=;
	h=To:Subject:From:Message-Id:Date; b=gb0utVobPCnmy/azDtPvvEXKPGL5HdTGvsaaqejrt/B6Ao91cPJcvUO4kwWabneSWKCiX5HiaYJTy2G0tEZG8p3FOeYTrmN1rXQ8K0pI7UBogTTmVwH00+bt/nuzRc5XxiTBgncGQY4IsHH5WP9bg7LlM6R0YJF1Kq2Aytpp0fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWgEXQG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWgEXQG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0729C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779707553;
	bh=+Z8hKjmz5N476IOcCsdBKKLwtC5j8V1s9/i7dDFLZ7Q=;
	h=To:Subject:From:Date:From;
	b=uWgEXQG9NwsloYUeAbjfKIJySBZ6lJTWagIat7nOFqO/ya9Q3FLF1AznP2UqB1Tpx
	 PL1qMpjUxqOVwPyC30cu+N/IdSFeaFEZX3D/8c2krUWEeJkw4Z2lZlOWaqVugDOXdV
	 8ZcjlZfRzqoeJ/zVNbkUJKuUeYp9vSlJuQk8SgggEWquNPhof7AxEowrwL0w3h68gL
	 2Gs5ZpGBBq92SZ4fFZds5pq9PzacYHQBn/B4zQUXOupdWhBLC7UtjS9uLvWpKYI2Il
	 2OVNjksGlRx57c3UJJ1SK028/LEYkHrjXnSumbyGBUSTSfvCpExuE19uNz3dEuNFhE
	 N3sj22wdfnqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A918CCD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970755368.23061.15863630441846851119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d836ec4040656d481acbbb617ee0095be485683da79e4a5cdd2a159baf11dc
Date: Mon, 25 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779707553
