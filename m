Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEC778F43
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735422354; cv=none; b=lyk8Ck6twuUSFBoX2jY58oXzuDtOGSWwYSF4IR6V30GHQVptV7CsvStm/Ji1ly/l5w7YwTVU0dkC7CuDHzaHt5J19TvoAbO/owkPHRiyddHSkLaFZmQQMpay4i+0eZFO8kxbRihIGDLaecG8d8SPmszyTbk7jpQAVycix0p+P/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735422354; c=relaxed/simple;
	bh=lbFunBKBlH+8KT4Kgr7Lh8QA2JGCK6Et7HdQe5xFdqc=;
	h=To:Subject:From:Message-Id:Date; b=BimqN9tXh069lfQEaSsuoKDzcOe1XJe8bwPoWMhcoU9jpMAVHtUnozmXuIFG9c3uFZJVhxYmOos69UuLBMpACRgi0IGbDH0s5iYrcaM+V3ecCbU3fZiAtMeH7Z4iJ/Fmcvn4pY2CqqtI5T1XmfNzd55hJbpSKo0MwwGSpKAFHwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+c7v4zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+c7v4zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA207C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735422353;
	bh=lbFunBKBlH+8KT4Kgr7Lh8QA2JGCK6Et7HdQe5xFdqc=;
	h=To:Subject:From:Date:From;
	b=d+c7v4zyTdtG2RdV4jA6MgG2SrGilfDOa5LCHofgkkDi2Iv43BrIYE34uP9ywRYgB
	 BDT6A9v+MIVVwzyjrwShutD4dTOb0SceKAl6D21hRL9SX8gkaesmFhORyw/aG0vXMu
	 scP4f98YLwu0aVTX2pJ18p0vNRNMFwxB97CM6u010FPa9JKyEuwLEXGKfBYp2JEKcG
	 MDZ57TE3OOfQowP+Qb8KhDrgcQ9M1bmtmrjL4CZ79QBTEc78V8+4UK3dzeUJAgX29N
	 mmtCtHJnDnee4SH/4Y3w2Q6WyeED7kOvZtv6TgXJh0scyiQR1ReqLkLUNSK7TluOFG
	 q5I5Qg7LUUexw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96924E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542235358.32387.10392328968694295465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea746a129a9c47eda432f7055fa6b7994350e35d6dc2fae795c8943a709f667f
Date: Sat, 28 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735422353
