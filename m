Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5038C2C032E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781241394; cv=none; b=OOuA0VuXT480ZfN7S2lu0G37fHaUiti1/XIlp1ICaqm3YzSiaw0B2bjoJwfYV9AMsyUufqxqblt1Jy26IaPg4pSouCKUAQLl3yWaRdXEzjZfzHKJ7JQL224WBUxcMqXioCpJMb2jzsGplPDExeJc1tXsMzePBKI1tVw6p1Fm/Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781241394; c=relaxed/simple;
	bh=MqLgU1z6mN9x669brBrLxtUMeL7shBFvX4ntOVtv4Gw=;
	h=To:Subject:From:Message-Id:Date; b=tzlGdWTBXpZ1nMoVbFWoOax6UYf8dtNTeafbaq1AGoYR8uhTehpItM29lm1bhWLI7UYY6Twt8LEMHUG5BE+Skro1vUODEDPmOWuX+om4EV97gMRoBea66Pqk8WxbwBgl1OcpcRrFOIgAZ2bMYUTENmyTLpjapOSBcupl5M8cMl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo838/nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo838/nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D54C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781241393;
	bh=MqLgU1z6mN9x669brBrLxtUMeL7shBFvX4ntOVtv4Gw=;
	h=To:Subject:From:Date:From;
	b=Oo838/nGXHoT4LhSr+cTGNtqUqB4y8amFUuCtvHIuXVRRw4X8vnZGWOOT+FMFw46o
	 iMyc7d+ImdmTUnhGcxIwrPRpIgfzdvCQ7AtDef46v43kvGw08IwoSjeBlgvt3Z+ane
	 w7O9favxx6AhECUNQJbjjeMTul5UGx8wi9AKb36NslavBbokQZcgNNg9ZoLuoIXWeX
	 ababUBpRJ/LlQHpE+bvEzUGEAXPu0nKp9KPfVnCSpWYq6qwIG5Ry/5H3ZdYxoV1353
	 O2vhCB82wg0P/zronGwuyZNtcMEnZCLK4wZyqbcngO2RpczJssA2BV6cx3zEJEAUyU
	 5RrGPPqS8mnSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971ECD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124139368.32176.6476617779164394480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3adb6f94c80625152bbccba3b97332a5f5756bb6daec7c02e2c96d822f8eec
Date: Fri, 12 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781241393
