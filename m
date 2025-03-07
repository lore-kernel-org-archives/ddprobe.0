Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389F214293
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741368534; cv=none; b=kluyMo6De5DzfXgk7SD1uOjzwjtncS4V4ELz9BSnzCkbhpKkkhW8YQraUz5kl18OXyqRZWVdk2MAHCjS8YfnZtN+jehK4o56Jm5n/T7rv/Maj0nSGh3a1QkEQ3Mi0Muhf0NVukgPPQ2IwqKwKKvxLB9TJvaIi0sNe7OclTpcVbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741368534; c=relaxed/simple;
	bh=CTHmsLUvO1V31UF/UHfSE37dvCpM9vWiHUQAeLSXqKg=;
	h=To:Subject:From:Message-Id:Date; b=WZxfigQR83leq/DPpMy3AHGXATM+eLfbxL3au/7e44IqDJEBiRKRLqMQqgIecYa6TAt3R09USmaOobBABkUeIfPdtjcHKjdVhnHgFSgAZ7ZuGlOulDerOuRL4XNqhLzAkJ/f8oIgFcH6PqRSXC0hMxQbrUJQivVBp+tQbFAZb6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZRNECgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZRNECgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741368533;
	bh=CTHmsLUvO1V31UF/UHfSE37dvCpM9vWiHUQAeLSXqKg=;
	h=To:Subject:From:Date:From;
	b=TZRNECggMq4EZoKRHUhSDCjy6KwkHqxPh9hamnq0nJqotc0kkFFwwhrJ7hWxYpU1X
	 /Q8M6ua4qCIn/V20LyJum3a86sodiml6pN/kjdUI83N8T7XG2qu4yX1+Y3PlSNd51e
	 MksoTUaUWqgkGv5FKycJWc8KFLWV6gccbP6Rl4nB8MkBysLFS5gs1nBM4m+F3ZBTsO
	 7UMY7mtyjOtEp+7frxRDkJvBcpnZcO8nisRNBpMLOhGR8tVOLnNAh7vUM0qL/D9FMQ
	 gSl0ZOibKZy1FmNz8UHMsyGm36Fd95W0RNMZCBl3qdaAeM4ivxOoqnE3CeSxHOR1ii
	 m+m5zeogKgoUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981DFC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136853361.22627.7973913541832894614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548c6fa947c77ee59386dae5a7e83de61b1d6627d2ee3b2e071810627e6c5774
Date: Fri, 07 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741368533
