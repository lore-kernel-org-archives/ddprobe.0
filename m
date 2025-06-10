Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D92B218EA7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749577794; cv=none; b=MrmGW2MPieCC3PcI6rHmqvH/ZpoDl3hcrPOK3KCP2aWpzm8w02N4SR14VrSJAmy3ELfBxf2TNv9jjxLmNchvR1Jq5iUKILqsP0gRz+u6TrY29FcpY/G9ayLdWRndGtuS3Tn80HneeFMGt7QJP159Mepd0D42uq6usq7AOx814XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749577794; c=relaxed/simple;
	bh=6scf9tb9Ut+W68CbF9xMmwU2mW5lRR0DbyxoQnig8wE=;
	h=To:Subject:From:Message-Id:Date; b=P7ec4QVfhrSzXzLaP/rInAxiivmNbAqIj/SlvZXospcE1+SAPUDoMBQ6XI2uI7+Fy+N2L4ty858uInEB0Hb1GUhruLmg6QXHKVnMIGo2FmAyCv24KFyZmM2qyA93TvfKd+DCrosUvyY749GDJAFFpPdcLyH4MupDfK1hGJHTsiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXQsLJCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXQsLJCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4597C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749577793;
	bh=6scf9tb9Ut+W68CbF9xMmwU2mW5lRR0DbyxoQnig8wE=;
	h=To:Subject:From:Date:From;
	b=tXQsLJCcgQFVSWViaD6YRHSxX+uko38mUSn8V1iWRSUJZ4XVMaYKkrA0ARbN3JZzK
	 N4ULlrlKvSdTEEqsnnsqx6RAlHhp6XnO+KY/bRd1ue7ytSwUt6TfyWgPm78jJWiINP
	 7kq+hHOxVAOEvSp7aJAz2+aqXkSQ3EUkFyQKTD3n05HkeUp8oQpRLxrPFiDBafAsCA
	 NSxfSvha6CxGxdY/4BRkwFdUf6ehCELv8K3rhPHQYnPbNjwogDSoHijzMq6gQN9PYH
	 ExBG44iVOaIyYChhwanj6sAJEAxc5Go1eKKVinZi0daloCgkUEdww1z9+dQ/gWc7Qk
	 6npOJOlRYoHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF4C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957779358.19036.17691469235903040194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1477f0b2a848f689124e144d2502c2e44d59a5cac129b0155422a156a97845
Date: Tue, 10 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749577793
