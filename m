Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DDB371CF8
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772779494; cv=none; b=Yzu8OgoMpqhS1uuDi9kzb2kbw1mm6rj7jZUq3qW3KQv7nVcx3amNYr4hCms1Di7s21QdA7cLmtnDRdFA6FjzgnMGzVCWyTNqtb2PmesPsq3B8Eodv9yDXTVVo5Vf5AHR52M3ZCrOoSIKGGCtna6Zfv3YwPnqvOG+UAgsMnPZUBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772779494; c=relaxed/simple;
	bh=EmaqyE5yWDF1Z2yBMtPMv7wPbu2TvZvcE5mL46QTpz8=;
	h=To:Subject:From:Message-Id:Date; b=sYRuKHxYRXIEyPsNIhesfkr/U1Uj/M+ZTMqqx4V5JZlp7vY11AtjMr5VhGndJNzTVoHmKF3GRi0GMvmRBoD0XiCqInINAL+Rd7MK0/JCSnbe44o1BgIPuUAawWhLvZRhrqajj4wkSpNz/wFh0xGIgZ/TGUnHQatghqgoYHitAZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K12p2w+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K12p2w+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A8C19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772779493;
	bh=EmaqyE5yWDF1Z2yBMtPMv7wPbu2TvZvcE5mL46QTpz8=;
	h=To:Subject:From:Date:From;
	b=K12p2w+Vm7F3kC5uA82OcHBZcXD3ako28AlJzPRAxLLv7sNRDe6Loxab4GlqNF7sE
	 DPPiAOAodGnw4AdJkrrwnYp4P+6MdjsN9+Zj3r3ck+Mb/bwiPNgIXMKJqsKNmeOLY7
	 N5ObXfGSxKIlnVBZD3ikip4ujA050iQ/QfiktinStGYeawQVTuZMzmuthsn6jQLn19
	 JpkrjQWLm5nSAOCwrAj7yIJiUy+KKhlczaKE2UAwxhiMWzmY2ifTg9NuxBIgJLNVBz
	 Vp5dntZu3IWSYNpNMmKYOxer+wX7p161DvLg4/gitJ4OBMyscVa+huIkZDDDUy5IrJ
	 OwdqPapfSu0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90338F5140F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277949358.25683.7949832034189000997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a23dbe56822abb5829320086c57f7e3aba6430acca26dd8211879f10b871eb3
Date: Fri, 06 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772779493
