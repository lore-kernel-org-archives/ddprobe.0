Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E46F1FB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753384794; cv=none; b=OABTCMxC83GjO5ucE3o59YHgdQ6fwBuc2WnBvkMZV5h/hhPMxBewOvck3aqHO1aPr3Zh5OVQzVCW28GzMJOrgURe9IH9wBAN3BEYX8TlfdKKQeKqfN4Peo/W7ffpUrDOTqTzxuMn1Z3Ytgw+rH5gly9aTXWOWEqJuh1/YdSUUKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753384794; c=relaxed/simple;
	bh=BAkbzW0zb44GWDj4Lqgmffgq2HxpY5huPrO0jAw2fkA=;
	h=To:Subject:From:Message-Id:Date; b=dY7VZDdj5JWDNy4iJnhT7jynKMrSWWHwOfUxT+rGcZY2C3x8R2FVQom4/Kb6tDzm5WMvt9p5WhAbOyM5aPoJ6YbVoguAD1GxPvNtSLIp7j6oGAdiogc8qFFVCTulZZuzRsTVILFIPACaIlRr4qemsLtnj6RWQLWiv+/5yqkbXdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksqejvS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksqejvS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E40CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753384793;
	bh=BAkbzW0zb44GWDj4Lqgmffgq2HxpY5huPrO0jAw2fkA=;
	h=To:Subject:From:Date:From;
	b=ksqejvS6meb9gO3iBtFVESKA9eyxFBa8OI8v12xfvKqr1dDSokzaBL+nZ02hH8a7L
	 gIDrn+dLtqDjunlZX9ei9bE5AXSZP5meON9vOIUoSN3JECOaFq646gtUYqh2yg8GCu
	 32nsI8yirkInY+0orxK8pc5GKILliIEYmQTfOfp4+j01yyfZcpxgeH4lOGGZcQu5HJ
	 KhPKctksaqVSZn2j5L+uVZPW/DGEPV0eH7OIrtDpgUXm3QPKrm72YcbVciptxzGjkx
	 zGSQn89lFsmWii2otzV5QA/yZpeGa2/MpWbHhCN4CyfYoigYyEjNYmYsOr672lZ4LL
	 l0/ZtD3nO79YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE00C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338479357.29988.14417374018230602091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4136faf10d372340083fa275db2e6bcfe090c88e5b89449b4540a41656d8c2c7
Date: Thu, 24 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753384793
