Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE431C1F02
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762417194; cv=none; b=fqbbqqK/x89joZGs+flPiQ+IkgaqTJRI/ui7Evr/1Ysl8A80vPfqYwK+komtgp+hvsJUmBDD/uzQ8V1sN2oInHuaGhnvyszoGPsSatJdK5Ug7aWjEzl6PKP5vlh7tSIQm7rDoBcjgBk6kYAG8XiLfCME64wD3KYSrW7L7Mlbm28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762417194; c=relaxed/simple;
	bh=tdgdtZ3/3ic3sYyL67mL+eE6BxzkDxdYKHv/OnoWdN0=;
	h=To:Subject:From:Message-Id:Date; b=N1PjvZsa1fBmZhh6nntHFOhSuwQyKGVDQKiBD6OcAQVNuymc5VxOsYMijFaI9Kjo4Yg8k1O6aJWRVSqejvEZ77N95BQmyt9ZDd+nlUUfCypMZRSNUPua+83CEyuk2b5qGcr1QjM38ieZv2hT+9c/DF1NYjaSCqG5tcQDS6jw6tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWzhgaOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWzhgaOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F73CC116B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762417193;
	bh=tdgdtZ3/3ic3sYyL67mL+eE6BxzkDxdYKHv/OnoWdN0=;
	h=To:Subject:From:Date:From;
	b=cWzhgaOmviAgSmgz5Y5qQAO6De7Z6tOHKec2oeuhRM0vpKbFfxtbp7n3OYruCG7yG
	 2rTvbJzlZw4mrMe0z8VNm40SHU9FS2V6qNb8qJ+hCiWV118Aattp86VFxkfncDSxHs
	 KLU5YCNhzxJEM+yxiOUYMeo3AH34JJPAXxq/mzJAy2zeJKqpqspM0BR+BRayp3LiVx
	 RnezNKGiDnLnQCKWh3yCcr0r3qanDhp+nIQc2BjtFgZYM9IUqtmVlW7aHtJUASIqbp
	 5KIu+EGxVqFpyCNLUQPGqM1veQvZmXvj4x4Ukk6S5E3H9g6WtB0BfUntGLRG9DSdHj
	 Ih9/CxZXJqeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9219DCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241719358.6615.13007856387515654102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29f15257c75d6e45f12cad4001ecad4dbaedc262e99050633ef91a093ced043
Date: Thu, 06 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762417193
