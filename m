Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C91F1A265E
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746206995; cv=none; b=D8nri/AksR/6+/+DHdF5L9z8aueVgM8obqxd3A8kMzqrb3iDzXzM1DkXxfdy67sEGMGBxuPM0lG3m5lAioSz56lC75CpD2A23ciipJNbLABoKNrcEed1a6y/tr9yWzj7g8xtI9dk/vSLdDZarTo0F4tlYegLoVjyydQvAgnjfQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746206995; c=relaxed/simple;
	bh=/bvni3wp74ZtVvZN+Xge1QLpbx0ku1N8KPQe1qFxSeM=;
	h=To:Subject:From:Message-Id:Date; b=bzH0B9gyQouETECk9p8rCZgs+l/j8loKkLZJr9yRwbF50EK6ZjSm4dLXNOB2fKsabOOdDiehsEApDUbKXUAKJidEoTJFJG+DnJoNrTo3osU9IXu5FRAsr9yH5wviF5SFKB4XWqIUzkLsboRp0gEfVZwhps977GDwJR0n06hqpSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcXyMWsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcXyMWsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2334C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746206993;
	bh=/bvni3wp74ZtVvZN+Xge1QLpbx0ku1N8KPQe1qFxSeM=;
	h=To:Subject:From:Date:From;
	b=fcXyMWsBvGDnk5MacocMSs1Y3ix4y7/suKo7NH3wzkKxVpOrqO0/uEXrFEd4+k5vT
	 oAPi8uEVopHA4dSenTsCdYY39w0FZOAH+6V3ZvZS2mA028qFYpELl7inUToOfSafEA
	 iqgu+dUrolWggfhP+8ICvz+k1OLs/KBIaoMPRYVTA2lbKhbYRJOt6zXibY4+x8Oiso
	 ee14bsSTidizoch3gvLxc83Tvm5ZCsyZaQZe9BWU7aYtuHIHn2wNVhGiUJFGkD6QZc
	 zm71s1WHNa4/AAszPkT8B/IevSIHiAmMX9iR5KfBRBZjcjlHjSWaH/SPVAKIPrhdS8
	 TdvpTZlWCaV/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF3C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620699357.24048.17504548363761687591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c07c347bc8dc2a72c6fae3b6e98891348acb2256c0f2374c7c9922b31a1fd3
Date: Fri, 02 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746206993
