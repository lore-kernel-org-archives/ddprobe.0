Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376B225742C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748822394; cv=none; b=l9M1AcwLOwXncz2O98poDIJAnJ72Xv7XjLvYiWFYqUImcavF78UmjGn9eojqnIJ5B1dXSv/f+QsAIWJywAxRiUZIZxbQzIoamylSIInL8eLO2qKk78/Wt6F6/nzZsppuEm93yTdCJtM9q+zXnlsU2JMG2t6z5E8vaAK83ZwVGAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748822394; c=relaxed/simple;
	bh=ngp6kWhaYfq+8613YTf12gJChvgwPuEqu9Z3SrcyPUc=;
	h=To:Subject:From:Message-Id:Date; b=ohY0X79xbRkKV4yYD9KYqKHFDMqbkS8ymfIpbxO1MSNRjSbe3zTiapa1nHTzP/8lIQ8YMcVyjFTnEk1CnX86c1zMjM9CS+xWpHQjpQ2QfDmQxwX4Jc4FWMiypohUjzn2Gh+X5cABBGqSV1PlQ5t2SmuvwW6Z3vrEhb6mPi753qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qweKH1Yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qweKH1Yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2DC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748822393;
	bh=ngp6kWhaYfq+8613YTf12gJChvgwPuEqu9Z3SrcyPUc=;
	h=To:Subject:From:Date:From;
	b=qweKH1YwunB2QzfYeKU+dYmMgaCBAqUceIAxMfLqhmAbo4KdGbWk9IHkhMtJ0J6rJ
	 ek3wHi2g9Wlqams3Y3kzW5JFQanju4/mwKdPRzhLy6OhQEC5PX+6oJcyL/4g3saYZb
	 oIIQwb2pnq2KEw1i1Oi6OjHxK/rIwGjST5I2wDzORh/bMDu9QfBFhMQIybv6veSfpD
	 BQDbirC4g2AOqWZ6MOtc/O0jZayPe4m2wjFkM2uBESesrSb7LFQbARM73T7BRXlB7k
	 S9OwI9PgVaMFfc+WxqrHzHTRaU171TVKle65AGT4MiGTE2eAQs7FS1bdf5T7ZR5VKg
	 xDzHdfLdc3/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BCC5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882239357.19628.16782353303253639953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817a2963998fd86832338ba671bbe1e8f85e61aa2b05e3aa45578e72f69e0716
Date: Sun, 01 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748822393
