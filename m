Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1C63B9DAB
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778792434; cv=none; b=USau7MgbAkhBAx+0/ZdH+lcUxyPjaGvPVWTAWtENKTY0Igu9s/AFbZ4ceNKGRDWYN2RsUGsmFjAftTsII7tdtZKLHxoD70VYX5Fk9aMOq7b35PRXBjxITGp5jRzboLzkQUlZVpCGCYpk7XT9fFA7HOfOA4U7gsyO7c7/iThSSpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778792434; c=relaxed/simple;
	bh=k0vCQOdlDWWaoBbVxR3HjasgNqJMeqX5ZvBnE5cxcsg=;
	h=To:Subject:From:Message-Id:Date; b=TA2C8YiG4bJF/SsMfXwm+HJ6/Sv+24h7tmOWU5eUBwnfh2QdZ1ZfCfs0JSwZNVmmP/QV0arZxFhhh1s9PgKM6cMwvisQD9H1JHb1ztrC9nTQCSdQBIXEfP5/31RLIKb/odP01TcKFk0cWNCjvOtU9o8rkngJPH7tLDNWLUy2s8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owTUBCx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owTUBCx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C241CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778792433;
	bh=k0vCQOdlDWWaoBbVxR3HjasgNqJMeqX5ZvBnE5cxcsg=;
	h=To:Subject:From:Date:From;
	b=owTUBCx06Tlt4jlquVCkGUt4JwcSB1lI+7VU1sqGrM+JWDrVLTjF/Pp9k4KiecANG
	 HXOadoySCujGdHv6Xjob+I+paUTQXk135kzoi1pNckhLZscCcNtFZ7KSY6r0Sk4d2P
	 G4ZK2W4EZfP/vx5nt4zFzjJFroM9BcApFxcjEEtpSQARd6YtMzAUjM6w2Tf7YGwtNz
	 RrjrqOJn9/RvMgqWMh12X7TTWkg9UracIevuLGdEIlFGBbqJjrkh7YP3FEYKLAe9WG
	 NvVGqnQ747gXp3PnDaFeD7Hrb68zEznLIwbDniwxtl7qxUdGAoL7dC8YyM/W8dC9jc
	 wjKF4WlWmoNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9FFCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879243369.4107.3870858930628910606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c790f835b4c4e3c406b75a97fcf254251089722cb62764f24ee3cae27108b564
Date: Thu, 14 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778792433
