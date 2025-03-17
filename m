Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440191459F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742217594; cv=none; b=cyBb44GTol0qvD6eP+iuSZSDXn1UI+dJhKFhpmrnmUpZB6E37ao7tDK2Ka5VgA+ft3PCmlBfcaTebRMFDvmLvM27uL6m1zInpGl1gWcJ1NQUEXCovfii/Bxn13MPXW6bcCLPFfAqFcX/FMUAXoXsMBS10qiX+amoqtnrRDr1y0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742217594; c=relaxed/simple;
	bh=Ivn71mzX/kR/Ye8BPC6KJCYkTrj0fLuI7eVHg0mKZOk=;
	h=To:Subject:From:Message-Id:Date; b=Tj7qrURR+gOY0f7Te53lR3r43M4S5TMXpq1f12/5KgOz1pf+6/hismYZuixIxbfTUZiEFoEA+pmHUn7ZwKYqPJGjfdaCsf42pEdjawB+HW/xsLRJufsdvuQXbUhoagW6lVM572t2/vIoNkLdect+GfHXGkrLfvnsyYVVu6hMkcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GizNyIWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GizNyIWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB5C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742217593;
	bh=Ivn71mzX/kR/Ye8BPC6KJCYkTrj0fLuI7eVHg0mKZOk=;
	h=To:Subject:From:Date:From;
	b=GizNyIWBXOAJKbI1xLcDIVaLW+Vvl/nZ1xFDGqZG4mEm9e4DCk2Ons9oreczG/IJK
	 TmUSjC9oRbh83/C1ocP2JBME7UvUdb4B90Ixogs6Qru0dOAhVu/jj7w5CLDvJdYcKX
	 pUe7+hJkJdGXrSywHslx3x+1GmtmvzI/GPKnoJAyAKR26vBjXL5KGu6oNZawKhZvL2
	 IxFluMsM58WE/Reh2A4IM56CQ1OftIkxWM4z3bj9xZA7+UFafMvzLjZ1bObS7ay/xk
	 t9fFYzCoLe0s2cJj1HVhKXxje+GBV2czrp9ovGP2ihuR5irX8VNj7mdaQ2e0zZfQaS
	 iuCpBYfYoQngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFFC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221759360.9105.18157423839832357392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aac02a246b997c30edb52e0a52593d9b2189748e89f07a211a4fa2d3fd1b7b2
Date: Mon, 17 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742217593
