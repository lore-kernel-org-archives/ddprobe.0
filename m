Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EE91A727D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752671994; cv=none; b=Yog2MKd+l8AzKdSS1kftqXx0ma2nlHwWS0Lj8iP/B4IRH+kq5NxheDgu2CGuetIiuPqVcwkBWVfz7773ybp5fPG2dYqiW/i2kuPMRFtEoWWpbnLjbmoqW3jV0YFlpImgoUPYd3NrR4J/MMWTUhPMGT+/HmPrdkmI2YqBa+NkAio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752671994; c=relaxed/simple;
	bh=NHP/LiR6XysO9Zpaw2SzmPsUK9mVAEcaV3HKB6IuP+4=;
	h=To:Subject:From:Message-Id:Date; b=B+oy72QKIahY4NT2puC70e69g6t+IIm6VEki+S6gN09lnfr21a8fa/IETWxV9w+VQ+U34W0Vqtxwz0RE/Jnd+otW+HZ+0Zl6UXTXtlZIOL3LdQKf4R13BPq8O8wXOc1RNbPgY+Eh9laQP6ZOH3FJnLQW9Kr6zoPi27i0tD5rt/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB1pdWWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB1pdWWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB1DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752671993;
	bh=NHP/LiR6XysO9Zpaw2SzmPsUK9mVAEcaV3HKB6IuP+4=;
	h=To:Subject:From:Date:From;
	b=FB1pdWWja7z5j+qqoRYzJGvKQ+M0Fsckm5MQXsqVZi1q7Qv/zCNCLxSIiCISz+bW/
	 iTYw9ItpyPj6AirgYKu7gC+nTiycCVk5czrems9ZzY1yF+NIOBLsO3gErOCnqiCoX4
	 0v0IuylBEVvEhquItFlQmLfdaoxb/6CDERMbqJhseH22om1l0nH5p+6ugehf9ORL2f
	 kDooeX+1+BKumJB2sduLP88dwv9EZJUYwvJBgWSAgs3oKAoEE9MHN3hGfD3UxbO6Fp
	 ObMaSI1Q9ZwkdlZaFihSQm9iX6AdhdnvT7f1RBxzn+PEx1m9fIu/BjvKym01+CTYT1
	 voKhQmhoH5dbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF6C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267199357.30996.12868284974360027205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0c9e905f03a6ccff4ff80450c5365040d5c4f97ea25aae808afa8c6001f592
Date: Wed, 16 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752671993
