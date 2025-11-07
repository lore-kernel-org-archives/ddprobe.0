Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6581A9F96
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762535393; cv=none; b=Q0jZBC8S35la3ZhyNVZ4n0g/XaQFqcmEeX74JbxQ85zXB63lVblItKycywBDADIqjmHBXAJV0ckMDK041FXNnNqsMmQ6/hFo4k+DF4pNAPpkdY0crwrrUI6ecYKXQVTQiUfZUVSjYrTcXSLPigYicOt2Y251Nictouw2BqF7N1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762535393; c=relaxed/simple;
	bh=OXt12QGe2vV/BrWzlFERw+iJHFrM/zElf13WvLGVNvY=;
	h=To:Subject:From:Message-Id:Date; b=m/Mww8KqshS9k6gIl+wZod1HAnua/qGt/sN4Gf4ZsqrP39H+kMwqadTlseOC/lF+01cajzDjUAeLPLz7vJtPdKvZHlFo/Mxh3SXH/+1tigNCO6Ir8UZi+ComEp1Eb2UkG8Ct3oBd31Bl/rc4f6ZfQrvvRa/RYGTHtOAKtUIfX30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrXoblvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrXoblvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB9C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762535393;
	bh=OXt12QGe2vV/BrWzlFERw+iJHFrM/zElf13WvLGVNvY=;
	h=To:Subject:From:Date:From;
	b=VrXoblvEnxIeNedPuUbr1COHX0olFqtPrgbllRmFGbayQNDUP+SZEH7hmisqMHoNt
	 f2QVTHXjDnDnYpdMAXJG/FzsOsGfA/iJ4Y8NWuhbiTcGa7bNaaqCCiGSQt4AMGFYil
	 RnBEA8bPeMsTvxKEsF2YHP9fx3DLYGQ/X3kW/zNpwl+6KiAY++HZeNey6KfB5lHiSQ
	 oK5jutTzvSHd4naZ3FND21KCzvTyox6FZbaryWi9MrQMu8nkSwcSnDBkgotmBsYO7S
	 Vj9oZgd1ZtDZz/iRjUG91lhmWIYZ/da7sPqZpSH+9YIZY9p5xESKto4LMVc+3ELCb7
	 7CzScLHZ6Lo4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96670CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253539357.22037.12750436622003307700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cbf589244a7fce010ffa63443fdf6fd63d40704debd5cec873e9727ffcfedd
Date: Fri, 07 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762535393
