Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A9D18C011
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750498794; cv=none; b=mDuJq+fdgJfKLk+/BkrvIRH0EZ6jzwibNQ2QfMyrGZ7i6fS4Zb3k1pqH0+qkA1d+JTvUpucqtWZttejsfKGHkpnZ8T8TXybJRW/FoZBggTJLCUY/dWsGndUPi6E2W5M8c8VXd9PJRDGA5VtI7VOxpZyJ2/ht5F6g6e6nFJ9dLns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750498794; c=relaxed/simple;
	bh=McSBXA5rExRrN+AHA0vip53SUIvoauphf4b51TgqmN0=;
	h=To:Subject:From:Message-Id:Date; b=icllOIbVeZgMCPq09kRbWDq4m3GDYVpajbPOcoP/bVMuK7LjSMLRhUHelU3SbkAsu04+WsRAOUP1wYF8kpppgybFIgaTBLibsVgygaGt2WcNaaCL99x14eIUeDCWmuO0spbq3c5ikQPZ0s5sI7AHncfxygCYADCpd8IVGrj+QoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlK4QYda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlK4QYda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750498793;
	bh=McSBXA5rExRrN+AHA0vip53SUIvoauphf4b51TgqmN0=;
	h=To:Subject:From:Date:From;
	b=ZlK4QYdakcDkHMS8VBrTQJhykyOswfPVaRY5ywgkv43Mu/Gqihcq9PeMQCy7WxKO8
	 j3BVk9qZpdkbRt/pHiuxBYxuNuPhBh+hrVZje7dzvOvTJBAfg6rkUpU7J5AiRNtr8P
	 6GmNDo2GVEQ0uz/tDxb/zvDfTKEzB3/kuA11f8ak6hurmrNk0ZtARm/Rdpf/XvoOIJ
	 /fRa99kHVq+5i+3Y8WdYt6dn+TdvwfoWb+3YvKQkvRXOZdFkWWVOzcrTCpvXOie1NS
	 cwyDSriJN0pmh0XWrJlzN7zX2aBh+SKq9lNsJQdvs+AZH1cSPFwT8ot9aiucjy82B3
	 zyWrNiTrFkM+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9217FC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049879357.9541.9884538491198699872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32371042de06184ba0903e47e733dee1010e5944026d4d2ccd762113916afee5
Date: Sat, 21 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750498793
