Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164523236
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 23:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650756298;
	h=To:Subject:From:Message-Id:Date;
	bh=Af66zrn/e2lRLf/GTuLAuvOBs28RuJ1bjz1GJasEzT8=;
	b=MI+MP+BiNrMidqSRipJhNdNphfUiXsZbRzuaAkaM9c2n0tN52qjhG6i9WQWsUMas
	MlVDhxrv1kqRjuun8BbqfA5VjoLNEm3Yo2P/iygO/JRMeuiMw6aGbn65Kr4v8oGHplY
	z3FunduClgLKj51OWQf3OSJXtRzBIZX8f+i9PgmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650756298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Af66zrn/e2lRLf/GTuLAuvOBs28RuJ1bjz1GJasEzT8=;
	b=frCXMkMDGZdpPRmtZLrWKPl3YO/2RWQOpqwJcyPhTfTlGFcJhU4CHMDytF5S4s7x
	nPPDwGN3y4tsiV0siLCVTXmwmyOfUzBq+xMsSmMtMR4b6HwM9mNB73Of7j8MStoZd0J
	XKMpMN+5RPUKom5qcDi8JdzspEyRHvbz3ctn/lFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018058be2604-09b8b51e-ce7a-412e-8b27-4f8d750f0118-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35fdf2efe594ded14a8975b4950af18038cc89190c8c215aead80334fcc545d0
Date: Sat, 23 Apr 2022 23:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650756298
