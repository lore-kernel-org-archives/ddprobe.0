Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E04BEC2
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735005954; cv=none; b=GHOpKTOew0atBkyMks/T1vUeYe9j5ZEmOt8uo6/FoDBZwKBfwatR8qRaM9R9qKPLtSdff3ScSgpKVgSifaOA2LqCytyNKwLMW149bjgcPJxAqKN/Ozhwu8PfhvUzygQCfGv6zs4jjboGagKV71aAMZ7kyAmY8S9oN1DwSaPnijQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735005954; c=relaxed/simple;
	bh=0IRDZrX+dVi2zb4ZNzeCDyn8ugckkJ+RK60cKFPECZA=;
	h=To:Subject:From:Message-Id:Date; b=H+f2tNSEev/GrfYGmWGXCCNc0Zp1lT87hcrk3vbXzv30QGFel6FMwF7dyDqxepT6s8tyV5CIQaM+88VyuQCNd1NkaP0AsS1Buj1bH+TJn9+7ro5Jhzu+IGlSK73Q/zT461rROWH4F7OpCs739rAjctvbBzVaYyg2qZTt39ya9bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvKYZBmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvKYZBmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF6C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735005953;
	bh=0IRDZrX+dVi2zb4ZNzeCDyn8ugckkJ+RK60cKFPECZA=;
	h=To:Subject:From:Date:From;
	b=AvKYZBmCeoL/axDCjTrBBFIvoSNqEM6bO6UjRbBTXfTQogb0W4Wi8mKyUR8mxLSqY
	 XZbrUDu5J0Jsv+Os4/VpHQEgZUGtaK47zMswpEgo/OaOrxQjGeVPTtz7iGxOXO2CzE
	 ox3YwLcAe6gDgIq1RXByDhlKesreT/J9Bt3E6A7GCe5KYMb+W6SimFTWJcJ3gymYrx
	 DgDYC/TE5TsvBiomAjYKsNtJOMrhtJuF09v+DaAUgXOu4MhmrBUKs2W3WTTR60MVuH
	 rjwRyDi4237xkoAW1rR7onQFZVm0Zfsyd+zB3mCVBbxbWUFbJriKUfPZUUO1bV2PLz
	 awxrJIR8a6eig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91175E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500595358.9805.6971612816261496670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b284ebe22fbf8b4ea757fc73a30cb25774e740d05474fb039473e8f88481ad29
Date: Tue, 24 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735005953
