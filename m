Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691F2DDC4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718987543; cv=none; b=ApPVrWBDZ8XfOkeFsOoLT5JepF4ZSINrpLXldq9npSDGY0ODsRlZ1CUTsXHoU4TkZBHXMqnrAr2uuYaEfOwESHC3x79dJSSuLYmBbETCgYBrhrNdZXR9CfZhC3hjCLycWGnjQEyFVRDF8h1bpMGsiJXhUj4SPIldEu/fNeamfoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718987543; c=relaxed/simple;
	bh=yPzl4N6jDtYPASPYG0mY1/wGW2a4og6qBK/VnuMyVCI=;
	h=To:Subject:From:Message-Id:Date; b=a8d0htPyVECK0dAfN37m+FwZppIMCN4/D4QMFVeACiPWWBLnPYue6lRCBlskHbxf4TJGnCybSuNd9MlTJt1A8AlvyM3HDFipBKwsX1Mg+X1J+uVVOMeKUshT4DHgFu00c79JFN9xkCeU1od/MOfrrKOvtJrfenwVhoX5ELGwDro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIiZ1j+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIiZ1j+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF9DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718987543;
	bh=yPzl4N6jDtYPASPYG0mY1/wGW2a4og6qBK/VnuMyVCI=;
	h=To:Subject:From:Date:From;
	b=dIiZ1j+uoeSdwxG6imzv4bk1dmQoKIxwpQECogqm50eaQuHw342TvlX7RzobMre/M
	 j1OQTE/K+k2OQuODn8A53BjvVNNC807z41ElPfebg7lGsXRPlMJQNeProdiFRhP9QJ
	 5DEzJb+VY/tpuv7JVJ13/PP+5YS56FIVWUr0dHryMoIkWAzyYtj62TtmfV3xHMjMA0
	 KlzumNiDVvAKpHuoKBaTrJ8Do8G2FlbyZDipHvEVDtopXn/96LreIYCc+MFpyVRjqM
	 Vl+p17nT58SwSev4HdxmAtodMdTNFy1Pg2HbQ8EYH4+1kMpkqwnCjtZgowhzJZiGXd
	 4kYvwWRoKBWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE2CC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898754283.16143.6453403398114661141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17609f147b461f4ff6e0158c4f3443b86630b73f4755a6c8c121fc188e2a47e
Date: Fri, 21 Jun 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718987542
