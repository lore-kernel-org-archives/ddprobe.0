Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EA3161
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716768863; cv=none; b=BMIJaP8VY7YeWoZ44C9CsZ9eTsMC3JR13JpZEAi+jJyCaR4rhqeXWx5uhpbRaskDDqttyR/SQPd3f83/U5m0kM2VtdUkKIz5Sq2d7QLqCiIDvGWlSwQ7KX/iO4JQVphpib4dPTXPz5VfVNGjXdUd5twBTyefvEtTTne4vm85KMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716768863; c=relaxed/simple;
	bh=2+6fmGXDHkAxxdRE4nyFFpXqxXOF0qAq0FhvBz4z/WA=;
	h=To:Subject:From:Message-Id:Date; b=fXx/DUc0GNc+W99uk8cdhyLZgM3VlJ6q9VwiQVCQReQISL/mX3kSerjGIQkRgVp0x+EYB6hrGgqrxnKx5mb816tEUXpia8TJdOPMZt2ouD/jRcpDLOCZbf/Wdf/ZDj5aUNu1nhvz7HyrbiD7X3EnsM0Hx9aEuh+aRRgihIATz7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/NGxY0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/NGxY0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE62C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716768862;
	bh=2+6fmGXDHkAxxdRE4nyFFpXqxXOF0qAq0FhvBz4z/WA=;
	h=To:Subject:From:Date:From;
	b=A/NGxY0MRtOeFi+1RKTQtKUh2kxwy6AaLNyMq9uvIWlLy0SgTXj9H14XA8K+8sZY2
	 pORr0Gz9MbHtqc0tTGjenC3fnAmEU9K1NMLE2YPHBxAzlVgGRsNAr6Tt7gaK+llmUZ
	 ZfmapP0UhM2ZDO+XaojMgQ4HvE0LOwwuJffOAwF6XSBXDsg/tbeBK4GJECoPWpF4Hn
	 zBnJuObTkoljG85sw5pI7SjAGdN/6ktWUwYWmPP5r0TVxy4odikYU9IahUZ8/mgrH9
	 CIpg2weCqvQ/+8SHv44wRoeG4kL0BRr2S3RR/sJDKbduRIKDpxYH4JUzXzB8kvRHmj
	 8urQQuD2NGgrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5722C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676886277.14874.17294147766783228767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34e67aa7601417ebddc3f6e148690df718e524a11bb69fdbd5ded9f71bfc39c
Date: Mon, 27 May 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716768862
