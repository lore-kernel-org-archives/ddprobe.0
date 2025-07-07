Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ED321C9EA
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751913594; cv=none; b=AqS/kHW+Ptfs5rBDiCUoq2hSJDwqD5CIetINL40KH3aRoJb3F3hfQKO1p8WStf8dV6Vl6jktCkfL3N2xC4GGSAOcPNsgWho32YlY5XPo/Lwc7q4JMzJv2AYUZtZT9yyB27TA/4TGw44wHoJ1KRfqTTuYt50gVxRlpVAWA6XXhp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751913594; c=relaxed/simple;
	bh=JUEZrVoi/Dlqz1UclbIq0gQdUALglX44zwH3KjXDUIY=;
	h=To:Subject:From:Message-Id:Date; b=fiIN7bb1iiqiRIlS0oT2KM1JDHJs7d5Jigy/YaaEvWYH0dsoDNFr42lGdqZ5Az2kDJ5NrZQ+A41pUWqERLAlPqPIJx4pW0rq0eDphWsbu4Sy/gZLtsYBsGekyQE0ewqcCdlKBJwW30+HCBLPS1KK4Ae/FBp83dzGoRVdKNnNZNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTkglMJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTkglMJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F2C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751913593;
	bh=JUEZrVoi/Dlqz1UclbIq0gQdUALglX44zwH3KjXDUIY=;
	h=To:Subject:From:Date:From;
	b=kTkglMJRvB/Ct7HfxmkrMoMPBfqyBnyzjo1Li646r4IMY+lonsRFU7ExqbUzlP2Oc
	 zsFCFquo0urjkylfaCWNhGbmdG8cWlpNVxQ5TuttB6nXa9yr2IQ3+YfVnNqyDOU9SB
	 DhVeUD2W0aSda31rA+57cvg1K6A/zn1+Os+KgE9rZbYPql7Ck19Xat3XWnaUjXDQKt
	 /LB99DtUOUdei9D2omu0uZ8WjLogOAQQqMM0bW6CcSE/mEKmdEN1TXC4hn30WBNF30
	 cYFQQFNnA1Ttyd2uEaIu08Cfc8UkWWFyyr4yI1RAtMu4lD29xWThyKgIKm5woE0TI2
	 rjavyY7sQGwgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568DC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191359358.4234.4684242589732933893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1000febea4c156fa7c65fe74929bf7c1228fdcbccb316ba0274cbe153179a946
Date: Mon, 07 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751913593
