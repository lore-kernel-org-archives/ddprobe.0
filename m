Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E373363C77
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785808834; cv=none; b=IGEUbns9Ovp3AUX9FgZ28p2l2jr9mzgvaNgEEYyu0/SAzkx8km8kjFi9nzIfOB4iQBk4ueMO5xYl95OBYhMaNvQx30MkLWcz+fnR47vEjFs6yp7pgQsZaFX+5u0+cJ+gR7CF1kAck65N2UWBHc6LvmnpL9ixbyJad22Piz7JikI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785808834; c=relaxed/simple;
	bh=X+FVy7yPH3ohJmexBroPHwjHjoyGl6CVGECuN8HPQAw=;
	h=To:Subject:From:Message-Id:Date; b=Vwm5O2B0gfZaAPbXzgtCg8cnZfdh+lPJvWQKlHNR7j8IkfUxZxbw+sa1zEkQfckscRDxtuLjL2Gnxpb/2urWRrJ0ah840KnxCuggNdRYfr18vHqCCyJ0w2AD7gr1oToyQipaTyOL49FfnQUNtSYTDdmhdL0kpqn9vZH4GO9JHvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrBaI3ZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrBaI3ZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0295C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785808833;
	bh=X+FVy7yPH3ohJmexBroPHwjHjoyGl6CVGECuN8HPQAw=;
	h=To:Subject:From:Date:From;
	b=TrBaI3ZLB67Y1S4y7yeKvW2nZ9pCS/QWIKtyZGVWARisyDC31yv1tflSxt4feYGV/
	 5M3WFWtmnKs8m/u4Vl4t+GhAb8zDZ2b8an6khdNcLksrgKpUiiEkoVoOSUa+oIR/DD
	 at9Otng+M9US6JIDrAa5ZIGzilDlVB2gq3yWyxu0pQ+ybdm2gy8lEG1u0nC6Flv1Nr
	 wrA3XnrK7HPXIjjYcyhRmocYfVQRPiX3swHvIevIHoCa4buZbtxRPCK1sfn5NBOWIa
	 Q/ggGV2/oB0Cl9uxsmL5h+x+NHNUr11jyYxQMtgGp5loDJNTOrdNiIN100/NTmH/qb
	 8rXA/a7Sm2aTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE401C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580883370.7280.17631400193576253698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f711e8b7874c1d27a4e0be25211e79c88cc61a578128b39c8784cbc17b14aec1
Date: Tue, 04 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785808833
