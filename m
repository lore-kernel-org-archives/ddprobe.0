Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199322DEA61
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764867774; cv=none; b=YXdG1Udoq2ezfuCDdEwzMn7RzI5/DlQubYfS78DCH3IvcJbMCwUuLnf0oqwzopDizNEyGksJ2Xn7sTQfPgsqUvqkGoJnO5j+CmYXGhVWWPZTuOk/fNi8IIELw9YhLE+k7JPiX2v0r12dq/lTaJpfqdeEDz3lsS3PTzNJpCW1Uec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764867774; c=relaxed/simple;
	bh=6+D9Cc+faOjbXqDm4n8v/ybZ88w1HWTOwJAeWF3qia4=;
	h=To:Subject:From:Message-Id:Date; b=g9umxdhlNl5KwkqnrkR8y8z0jcpGizMqlTOqMFSjh4e5LTofYDTCcaXgN5O8l3fMLMJsJEb40cDbZ9wIENj17utyuf1yIIh9TeOFdAU1Ni34jpcfRrS8+l6+oP5BBJmxIb1ONBcDrpTI5xuoC0J8CbFPvdtctKZHXsOecJgvSiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzukqQP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzukqQP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ADBC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764867773;
	bh=6+D9Cc+faOjbXqDm4n8v/ybZ88w1HWTOwJAeWF3qia4=;
	h=To:Subject:From:Date:From;
	b=ZzukqQP0sjTIo23hgcDY7erOKV9QfWwADNrGBucO4hUaP5NYIhFgdV/W/W/4p6aKE
	 G3MKDj937TaK681/mBiIKM1bC6Ki7r69cTm0Mgw4NvwNW1DUbOs3urOyLjn3OTTnPY
	 1W+RZe1gxug5OI9HFnZJ35sVvejNE/ltnjdb4FdbxtNfMG9slqzRLRC11CvFcgZ23I
	 Ucs6bgZaoTriTd5wuojLTupflJYlccONzvEPpr3V0a0/UQ3X83fj1NTbs/T9eKf9c4
	 OT8mdwLFNGJsNIznXqBImDs3T7V74DaJ6+K8ikeu+OZAr0xE0PWc1/QaQOf47YRZuF
	 lt58yNq4y6ssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9CD24448
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486777359.6215.10455173904522622736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8517dffca1c50e2e4817e32269e39a90f34a9f48a2c1dd230d6172778c51f88b
Date: Thu, 04 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764867773
