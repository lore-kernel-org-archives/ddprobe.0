Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6222F39B5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782086194; cv=none; b=heFHZqvz4vJRVx9fwNpxT1V1Aqn04qW1prG7O7sY6KjJX+MYJQxLlc3KrCn+FmFyRrFjDqqXg4GFdTEAc2kk7kxKNP8gYbjHNKj8FO4zHJsVdeQwWkwyJENOvG7etV488mA0EnbTCyWBVYGP+FyzPyJ4u7J3JCcw5uQ8R28vFiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782086194; c=relaxed/simple;
	bh=5Vv5tV8u6bS1Eo/KglLM9OepCft0I5jUvlfP+0goMi0=;
	h=To:Subject:From:Message-Id:Date; b=ooMSHf565VaSjvsaqB7yKbXszjN11a3jgIfYdeOPHvIQVXGqCuZAY7iyT+pRv4l4abqPREO/SMIBUeZ1Irv5mUYupyFUDe1EOkuo68VEhOZ083VEcMiyx6NCTOe1pXfxYed6o7gH+UujmjxtN6I8PXwTOegQfwSnWLhL+XMfjOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQpg63QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQpg63QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4826C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782086193;
	bh=5Vv5tV8u6bS1Eo/KglLM9OepCft0I5jUvlfP+0goMi0=;
	h=To:Subject:From:Date:From;
	b=GQpg63QK+Fz3pY0mRahirQlfwUdT2qR2VWuAihxI1ym2j8gDFTF33KxeC/ivC5bJm
	 rqptt/qd/MjS6jwagphVbNHFJjjpCc2KckocQ+7GcuvilMVACkwnVyVwnazxOlqNqL
	 c6bbxqEjiAw41BS+h9+hJzGM2bIaNrtwN9FguQGDrZKjMXmmDgQeoxKsV++SV8Ma1A
	 yxzfqBwWoHbeleKPrwOSYmKQcv1ep5BN5sGGBpJ82L6JkzcbEU8ZAzjhtGXuYgY9up
	 Khm/AI0dwQ+fHLRjQDG60Egjor3TOah7l/iWXMYhFDUa76i8yRj33Ob9o8TBD/9gWG
	 zlRcGL4EkTR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CA3CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208619369.7169.7946060924078780119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a68855c0086d5f026fe24fde00695eaea47dcf1553666948ac79995f0bfc41
Date: Sun, 21 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782086193
