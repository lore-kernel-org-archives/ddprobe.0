Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D06F1DF26E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774312494; cv=none; b=AaZdlR3lZghhiwoHNRTSRWaNUXfY4pjQkuHgFpAuwoUUxGPTSgJ4TAYk6focaGG9UA2Co9Ey1Cx7sgPKaO+FS7EUauJxwuHh1CcrdMB168DT3z6p+v7RsUPogG80VinwspT7V2ZNapB95UKppU9WhcobFiOxgpCHNG74aR3Q1wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774312494; c=relaxed/simple;
	bh=Aa5YKmjIxHMGn2n/ou0U5TfIv2E5PvGFOkvd/3qCPfU=;
	h=To:Subject:From:Message-Id:Date; b=bqQPtJnog+oFaeTQvenEJHvtjfnvU1E+6qrFwIJzH7HY2VXsyt6GNbmeqkRP3Bm12U4CrxrDiQ5R3DRbb9IiKrn5R6OvEk2mwr8T9P5ThMKYJvC2tUkGxU9WICggT4EaeaPbFSZkRQo7T8hG1RpY3/Qe/j6yYb+eaJpJY3Txs+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUtC4n18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUtC4n18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C65C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774312493;
	bh=Aa5YKmjIxHMGn2n/ou0U5TfIv2E5PvGFOkvd/3qCPfU=;
	h=To:Subject:From:Date:From;
	b=CUtC4n188RR6c8lMKvh4Q5G+MH3rS/pibTEBLceDnaMcx93De12+tIGq0dr6jqG+S
	 rcfiHnakIUmuT0Rfb/0CV5KUz5sopAvra0HRZY4k/tRz9DDvzdH0ivBNMMTHy5vCUh
	 YRUWvg67TwuyET7qLqmlFE++yRSlA9M4pGW5J/letzCnbhDjlRpJU4DaIfoUf0xi8s
	 8S8DcRkBhH8eHaImiB0OP2kts/2Tk9MlmHxMC7+iOqfLVVZ8cCgLaS23kv0A5EeQBE
	 BLzFemtURVKRXlv2a1SeOhajfUwLj+/HQ6ilwHRZWtBx7Ziy3weJEuDQGfn8ES0hF7
	 u1GBdglLex0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98475F532C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431249360.4748.6821332190208514417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a75852571a2d689aec80115dcc6222235da1819ed9000614a885313a424de8
Date: Tue, 24 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774312493
