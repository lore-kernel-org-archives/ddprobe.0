Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C81E335C7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746103794; cv=none; b=JBKiCMx8pN2DPJeiGW/j1ehJikohLcfQMg6YTz2KLqBtqfPSpwUAiCWYyWMyqLXh9czdfAAjxRv7Bx8QVo8kwYkigHWMNDWDHUM1wlgkKjrHr+gmD6I9JbNCot8GZRz9L4u66uN5wEvnq2e8bm34HILwNjhCECocWqif2eBdjxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746103794; c=relaxed/simple;
	bh=+EW58EB4JS0RBfRu0FDlkvau8iJh4ezn5NA5wSRCogQ=;
	h=To:Subject:From:Message-Id:Date; b=bkhvt7GEyQG8xfnxwNbx44Lk9ObI8kJal6qtD/SHaZXMezL/rEN4UUwUrV4ZYkRvdRjhR/cT7X9aQ4tGSfJTj8wxy7LPD9oCbVL60hTr9K1e7cJqjj+SJEQG23wq24S5YuccnAQjE5EQMMK7AwVncR0QrYdzmrzqd1BYgovm6Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ2L/tdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ2L/tdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F85C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746103793;
	bh=+EW58EB4JS0RBfRu0FDlkvau8iJh4ezn5NA5wSRCogQ=;
	h=To:Subject:From:Date:From;
	b=NQ2L/tdF+2MsDfm4HC2RgQhuoAiKDpUCkJgLXIE0zKWMXpqRnHM6DKqs6ARZnrLQz
	 xHF0mKLu+VdP27QpbPSi8Gq47Vr9dGs8KCL04lSY0Ns+JarXQQI8nPLEHCya2Bp12/
	 y5vLKnwaJFZc8X3MuWMT6gJ1yPmR/I9AnHlkyZH570/kGMJ2BDebulF63bzv7OcJCy
	 g6PtEyjKaoOOSSdAVlXA+I5SJSGoO5RN3MwJ54kPMDkML+PdZc6jNroepZO0wN+e26
	 dd3V26KBLZDOiLveNUCuZoyQ3Zr1KtkDOsgrgz+KA+4FhfbNKRKFXD3IsjfFsSdJ80
	 1WaWFx1Q3c24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF05C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610379358.17034.3303431590554035935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9187bc5dee022628bcc7a20491b332da13293598b796a85d57d6d62d5e59d280
Date: Thu, 01 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746103793
