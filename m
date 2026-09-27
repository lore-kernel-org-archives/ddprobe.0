Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5376F274FE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790485834; cv=none; b=SYWqiI74U9PKe4gUzMPa8tH5lCLSUB7SkiYRKk0iBsXwnd9nrFtJUDG7JSH7T80GZAFiu2wTwI5ECcaKvkVVS8RPbvAlGOEDwEitjyNpX+QNtUVCNwkvuNXBcmKMSMrQopO3Ds8dn9LaAszbSCEdyKV9V+pGuu3vKzqIpaqVxkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790485834; c=relaxed/simple;
	bh=qyzb4iiQ6ZVF3LEMSzhNii2YbKH/t22sRA8ZqqLkquE=;
	h=To:Subject:From:Message-Id:Date; b=Ra3xbk24bk9oeX34oDIEB4BOEL8zcMjwqD7+As/gwO43kvpYVk0lmtmEpkR31dXKuXqUAQaRmrqcELlc92qrRyGZXEJoMOyeb27gzQt4tLk5Sng52i+TrL+6jqcxqc/QIwOmg1ynNxZiAKkWUHn+jnHoXx+EYdx9/Wi2Uqg3siE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qjh6i2PR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qjh6i2PR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC10DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790485833;
	bh=qyzb4iiQ6ZVF3LEMSzhNii2YbKH/t22sRA8ZqqLkquE=;
	h=To:Subject:From:Date:From;
	b=Qjh6i2PRJCB3OWqPRPmthYYpbB8R3oAYQ1+XfLi5ODBOjpfpjBsjn1IAGoaFU7Zuu
	 Z74Q8p5qCJj+kcaQaBHKgcrvR7s4FOS3nzIX+W1P5D7TPV5A/foyc/8kLxHguFRIlw
	 MsX8q5kqceQThxoxCYt9C+TNXOJhqrXHKDxIawd+jzWgD+j9Sv0n/fX2iL6qL5HlPJ
	 fXIjZINejfJ8wC5USf4kkNOGdO4Z7xAyQ+sSspNu9WW9m3mWjHaMPOSMTT1YTsFD1Z
	 m0Wpj80701mtDYUh1s253d895OCuX97xy5hoGLH7EiLzkqX83J/u+Kw9EX7ZIDEu4X
	 n9TuccKD0wRZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA0C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048583368.15951.9792987491108705054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c701111e826d65ec73931240594091e6d4e63072e6b19e4594ca962fd6819f6
Date: Sun, 27 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790485833
