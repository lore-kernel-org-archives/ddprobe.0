Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C163B9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781310994; cv=none; b=bCyuJOhco9PcudYxzVArL381/xyctYmTFIBNY1CfPhIB3cr3qMht0TrN+qcjQCMvlitqkaFc5wHG4Fie+QNUdGYTf7XeLiGKo47g2icU0qOqVVZpoXVJ6YJAifXeUR00fSpzvX0vqcGvpLAmmvciuPtI6uOTj0piqyk3z8Go2eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781310994; c=relaxed/simple;
	bh=Xf6w3MxNtPnmDsamiZwgxY4EMM2UKcEe1uOgah23h50=;
	h=To:Subject:From:Message-Id:Date; b=JA0yGWd+X6EjWyZGbD6tItttXYdl+K1bnz0bruGVrv6eYvVpSRgJtIe/Ex7NBzKwj8fdAad6rGQNMVZ9FWd/4833kVCp2Cy8EAi8mC/kdrewFcXoNkGRtthpMoKJ2Z97FEnb3bb+D9xgM1G5qjLfyUGFnfwgsmqZsHxyesiGgXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqNt4tuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqNt4tuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B25C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781310993;
	bh=Xf6w3MxNtPnmDsamiZwgxY4EMM2UKcEe1uOgah23h50=;
	h=To:Subject:From:Date:From;
	b=VqNt4tuqN8z6cFeirD+00Gdjd6Q4Z6F2nbIKvLd8CqReaqdSipvTRaLR7qDRO93R6
	 SmSIZ64tBSft/VgoICOtQWiyXNeA+58AO0o42eIsK19TpWA1hfhq8YuuMbU6zuLaL4
	 Pb8dCPUVazTKhTSWEu0h6fnQm2kDT9Z8VgqGGtif6Q2OsOCLAzi6bxoR4+OstnvUS5
	 Yj1P1BTV6YGV14kTh7n9xMdESjkBql3iqEsBhID/vR9nFRdFpNBC6F8u4cUVOjn0Vs
	 4gV5eiAeFd6AHXaPb0WLP2Sr1RLkBznt8RlQnpIDY7lce5iDO8fa2xLbSSIY6vn7KK
	 Y6ggH8zCTUoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7856CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131099367.26732.11970670074143844140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b988b76d1da96533612de254b1dfad88673482518ddc44bcdf27be8778814ccf
Date: Sat, 13 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781310993
