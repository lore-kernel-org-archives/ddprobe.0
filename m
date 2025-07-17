Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C69E289E16
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752751194; cv=none; b=rpfo2DsqoKuPzCatzgvpjvOPahouzNsw4Xdip4dxORon9fJo0H7GlAdRKVvnLg5R+C1VD7CrP8S61FDaW4Wb6CFgEmPbG+YylPMvy48VUJXCvSnd0al70g0si64+em7m7ZvnmmPdDK6CUOm8dfaBg0SCVXU7lWsx+PaQh09q/0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752751194; c=relaxed/simple;
	bh=XbPwlBR/Ux51uBnD6eV5ErtCNjhhofN7E3HLSqf3TWI=;
	h=To:Subject:From:Message-Id:Date; b=Qz1IOwX4VE5mcrWSuwTiNeBfabo2MjJ+FjXWAZOMWSDPBVGAcRt9YyYx6vR53l1yhoXb7ecbN5AAFP72wnLe775tdIqE31G2JuJN8MHM5PKcv/tzW1F2G8gfJ9UQcEHaw+9Xu7H4yHswSuJYnHeRaKTqzbmE63NC7TVzhjDUE3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txUk/1Zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txUk/1Zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AADC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752751193;
	bh=XbPwlBR/Ux51uBnD6eV5ErtCNjhhofN7E3HLSqf3TWI=;
	h=To:Subject:From:Date:From;
	b=txUk/1ZjNfFRABdypYBTXu2+xjr7acWGn2+tKi1xQN8lKK/Q4/JbuY7vgxgZ8EbLX
	 Ykcd3EBWM8p4E9KiYN/A0vph66xIvln76AMnJZHXSgt75xtzYYzWIOUe3wRWen6ZfV
	 Ioyo08woquLs3x2E4jZnqMI3S4r4b6N6aGvyWS40TK4dAMdca+hVNJ5HN1WWitf38U
	 17+VuktP6giyEaHQ3fPdPT8WZoDBfDUaZQRV3DVOnoW+jcNX7azvpH+bzcGGj1y2fP
	 wNSYJ84UaGyAz17FQEImMuEo7iS5ltg+SVXrvOBqMuhKRYy36XF7/aEfHyh4jylMem
	 SYMwdVnqVUH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205DC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275119357.6261.1978712206681685090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a028e531ae1dd881a206452431167a22a3735b263c25c25de6e0e611c7c6dfdb
Date: Thu, 17 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752751193
