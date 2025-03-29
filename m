Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BD61DDC15
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743274795; cv=none; b=QQx5xwWAHqTRjxl+Vd1Rk3+Prjq0K9AYA2AuuRnOXp/aRcN7nuvdqXtNvrzeXbjRv5ryUBKrVVb8IMjA9LR7KTuqjUuZdefjXmESCEVjsOn/AooFD1nNb3fp0mINPdSABnexmJ2Jpgoh26LmU9YVB1sPOQjgblzDk/HwF01vA24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743274795; c=relaxed/simple;
	bh=uyzCuAzBTU/HMJpuiFFrCCFvGvHhcVVEnbJX3CeiqY0=;
	h=To:Subject:From:Message-Id:Date; b=GotqRxHhyG5aX2ff8VKrEBWyvoaaOHztaJArFiVtyT7/OqSc97wAiCTdK+cB0pWH+0Xb0aJ/8pZdaXuzwXPliRwKHQxu6ZdYZDTpFFZkLMwiNoF++RKai6Gtn4frmPgtd6nV3UHFFC5hSsBk3ljQwSWZJFeSDY6Ydl8E7LXdPfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/Ko0akx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/Ko0akx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B37C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743274793;
	bh=uyzCuAzBTU/HMJpuiFFrCCFvGvHhcVVEnbJX3CeiqY0=;
	h=To:Subject:From:Date:From;
	b=u/Ko0akxXHYNxiH6cRJWL1JYD5HtkWNIVgAbVwwP4F2n2N0m+aiAJ98BgmrLuRpWj
	 eW/XuC/TAAb0gb+c6VNsuFxljqxEGgpofLWpb6sI3b6/NH7+ujG6OoHV3RdewCM+PU
	 ft1DTZyMb/tn+Q3rcCvtfyQ5wW7ktlgpXkxNUb4nIIzcc407vTMbL//IdpVyB78/AN
	 ebx8iFYVwskkkeEuL9u9zOm/ZjIMXJD+PNkmRmQKS14qvZWsSGM4IwWVt3t5usBuXm
	 xrrqemS7zABSwxhU0bdi8zNkR+c27FtkZPMVM2qar1f226P4M/NAhfp6Pbmdvi0Ntu
	 6W9HZabjqrJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABC9C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327479362.9097.5387256174536624778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2c79153aa302ea9f6f6b11929e34e68b14432f951a163d4ad129a8dd00efcf
Date: Sat, 29 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743274793
