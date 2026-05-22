Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A3E30BF4F
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779418954; cv=none; b=AS/7f/Nr77H5aJ5qKp4ek1pYZKiEXKXKQO24pqSSbXZZg1Ra7poiXRWgY8FOuz/Pz1RvcXZYcZe7uDmQJzUf3ypAkccN6I36a3GBRdskf8ZALiwvC8OgUgYquNRVqKlnmqyCvU+YDYdm7rJOB86ndF71luQfSas7CeiMrSm0IZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779418954; c=relaxed/simple;
	bh=lhKq4J/QffIoWjhR5hjZIublWlQKtne5Hth2vj6xclM=;
	h=To:Subject:From:Message-Id:Date; b=J0wZqrPC8TthhPWhmwCk5ESaiv7IARE5aHqxFTfeAfEjbv4xFOSLT9dCw0xH/vtZw3D45p2Wb5PCZ2IgFI28G1c0ad7una4W+ztDP11yk/4/0Yy6jMqvnr6fp3DkJCEPfgMmB0+wZbxERb/g7HuACbhwkQdsGGEG1FrDUooW0gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdZ8YbgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdZ8YbgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC480C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779418953;
	bh=lhKq4J/QffIoWjhR5hjZIublWlQKtne5Hth2vj6xclM=;
	h=To:Subject:From:Date:From;
	b=VdZ8YbgExlPE+TsJz1+8G0gLb7dNmiy5wKZAXywE8TP8lDmRGnIkTCnpmORtxknRE
	 y1gPaqDexPGK5s2IYBIFM4XGYzTnbslaSzUqB2+1vMNlcKalA34FUBLYSZDXkPXluo
	 GmfkBu108I8w8MLDYNmzYjfhzmfdEst2YmE310IWUOty2ZeKdXNSdgJIPMjF348DUA
	 VPHyvNZ3Poki9UQEhbUDc1BwqiAqaPnjBn3abMCdZOgWvNv6sjvPO76AJKArea/q95
	 /CUTbzGnHnqzIzaUCvnJg87gQo2MCeMWjCuRl9BQq1+ReZMrNVpYcpu8DhzJbH219/
	 A/2y15P+4S+7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EC5CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941895372.23265.13319195830063145771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9988f2233d7f88823306d933c6a7640682796088568c7b6045db648bd479731e
Date: Fri, 22 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779418953
