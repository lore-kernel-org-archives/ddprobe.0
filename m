Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DB02DCF44
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752859794; cv=none; b=mqWZg0Cqx/Q+RZhhNhKhZGDJNk2mIcA0oWJ08RucztnpGYGFHK2TeOeD6TbOah/KcB6X6KiiE2oOVD3/0XJW/JfGaeU3NsHPdP8CDnbX93UXUP4YyV6tcDuYry2RjchyQttrXs6+0/wy23bWLDrqVo1c7HOJ0n8dP64aWY5de4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752859794; c=relaxed/simple;
	bh=SKAa356eX1DPuOtZdG1TlOLXn2AiqKYUZZAmtvknqCU=;
	h=To:Subject:From:Message-Id:Date; b=FofvggHECSBz3Ee0Z1NuEg2cmhJzvAuce2Efy+OrQVoXofIvJVog6aqa2qWPihu7638yjN58QRmY8dNAfaflZ4Qji9eIhZpwu96WmGfK0ncqP2AusSyqHsoCqWbR9g6pi6C5WwBAYy34Ly4f0gLuE+FBHJpiOl2MCIij68yxBTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUKiaCLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUKiaCLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A794AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752859793;
	bh=SKAa356eX1DPuOtZdG1TlOLXn2AiqKYUZZAmtvknqCU=;
	h=To:Subject:From:Date:From;
	b=rUKiaCLFb8YndBtg7y6qYpIRBTi3KvnErMYbv47XJivLp+qiFXGKogTsEcebMdQrK
	 vN+G9zKam4nHI2Pg4w45/x1rl6d6IXjimnP3dnkgLenEpA/M7HJPSqR4FSpM2YVOtt
	 lobzKu2Mgy3fEjfeVeRSx7sF+iP7RqTeLoM7m0i2dabLXiNpwJI1UdyHg1V76VraiG
	 vVtOLELn52xplGoI2o76nNxq2HyavXPJC/OfOUkZayQvgr6YaWWyDs9uC+4hsEu7Af
	 fl6xqKzvMhDfUj5iIjvndx5SzjQKWaSzq6qfN6EPU+5SvY+xdRC+Q5fwyYxen4u7oz
	 tp5QkrU0A9RIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F94C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285979358.20708.12204676006982284805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a574735fced84baa63f897e0b2a0f71906c5806785aca4af6f5980584dedeec
Date: Fri, 18 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752859793
