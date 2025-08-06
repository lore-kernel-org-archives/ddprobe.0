Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215B1FBE80
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754473794; cv=none; b=a9B92kieweGv7kTciZdcVLCYKydn8hJWTsc+Eq8blhm4vRBOx1DEu0s+wJuzwgNtuIu/Bxx7Kz1GRJ5Hoy20FizqMG/g21VHHEqnWsAFhnyxHf5ZJ0mWMMK7uf4/LtDEooRNXQo3DnXpxBVEACveNwh8MOarU1WKVpB0H7IosW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754473794; c=relaxed/simple;
	bh=8xdEPKkjY01CkQvasnS9nenbYCh4JncUUV4bQtrMf7Q=;
	h=To:Subject:From:Message-Id:Date; b=mE60WkPwG3RsqmvYIqS+ysdDEgmDriJaKMWOIzNa3JIQnDlGQAJ6bP09mFb37lhpiC+M3xS71tdCrkQ4mzjwyvGn7TFGYbivTCaj7fKfUKzLI8oV1KQcAFF+cSnWDRl7xScG0wxgUX+w95y56e5Ox/5Kmmm29Lz0uhiy1t2m7AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfPbTcmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfPbTcmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754473793;
	bh=8xdEPKkjY01CkQvasnS9nenbYCh4JncUUV4bQtrMf7Q=;
	h=To:Subject:From:Date:From;
	b=RfPbTcmEGudgAqqos87Uf/VgeRSxQd9CvaM77cGrDG9oBDhHzwYaViFRh0VS8oIi8
	 e3vwM5jUxVtRyG+eMckDuU9UVm/q6/FmetF7OX96Ylea8yDzmur9NniOLvTJ7YLFUI
	 oGtynySmty7PlSQg3HKUdAtCSBU93y4dfOm7Z4FD9vbrlC0Pe1IUGGk8vQFY3j3zsG
	 4WqgXPy0Mg6Ik3aK/GGfEn/dg0WhgOtfiGLEZ/dAejwPBnN7hv4RiEHBfP/K0hNbMq
	 xzj4w3NGQkfG2j5erbX6uJzpYqAIVcRdfG95KtCOW2pm5Qj0hv8AZ+EXKC7wi3TIuC
	 Iq+yPum/9W6Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23FC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447379357.21500.9903522190072194879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d4706d53756af8441f757e5beb5b293348a034a88ef39279f2b78823396360
Date: Wed, 06 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754473793
